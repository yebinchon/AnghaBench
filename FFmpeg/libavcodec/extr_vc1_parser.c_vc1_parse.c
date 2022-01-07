
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ VC1ParseSearchState ;
struct TYPE_12__ {int frame_start_found; } ;
struct TYPE_8__ {scalar_t__ (* startcode_find_candidate ) (int const*,int) ;} ;
struct TYPE_9__ {TYPE_1__ vc1dsp; } ;
struct TYPE_10__ {int* unesc_buffer; size_t unesc_index; scalar_t__ search_state; int bytes_to_skip; int prev_start_code; TYPE_7__ pc; TYPE_2__ v; } ;
typedef TYPE_3__ VC1ParseContext ;
struct TYPE_11__ {int flags; TYPE_3__* priv_data; } ;
typedef TYPE_4__ AVCodecParserContext ;
typedef int AVCodecContext ;


 int END_NOT_FOUND ;
 scalar_t__ NO_MATCH ;
 scalar_t__ ONE ;
 scalar_t__ ONE_ZERO ;
 int PARSER_FLAG_COMPLETE_FRAMES ;
 scalar_t__ TWO_ZEROS ;
 size_t UNESCAPED_THRESHOLD ;
 int VC1_CODE_FIELD ;
 int VC1_CODE_FRAME ;
 int VC1_CODE_SLICE ;
 scalar_t__ ff_combine_frame (TYPE_7__*,int,int const**,int*) ;
 int memset (int*,int ,size_t) ;
 scalar_t__ stub1 (int const*,int) ;
 int vc1_extract_header (TYPE_4__*,int *,int*,size_t) ;

__attribute__((used)) static int vc1_parse(AVCodecParserContext *s,
                           AVCodecContext *avctx,
                           const uint8_t **poutbuf, int *poutbuf_size,
                           const uint8_t *buf, int buf_size)
{



    VC1ParseContext *vpc = s->priv_data;
    int pic_found = vpc->pc.frame_start_found;
    uint8_t *unesc_buffer = vpc->unesc_buffer;
    size_t unesc_index = vpc->unesc_index;
    VC1ParseSearchState search_state = vpc->search_state;
    int start_code_found = 0;
    int next = END_NOT_FOUND;
    int i = vpc->bytes_to_skip;

    if (pic_found && buf_size == 0) {

        memset(unesc_buffer + unesc_index, 0, UNESCAPED_THRESHOLD - unesc_index);
        vc1_extract_header(s, avctx, unesc_buffer, unesc_index);
        next = 0;
    }
    while (i < buf_size) {
        uint8_t b;
        start_code_found = 0;
        while (i < buf_size && unesc_index < UNESCAPED_THRESHOLD) {
            b = buf[i++];
            unesc_buffer[unesc_index++] = b;
            if (search_state <= ONE_ZERO)
                search_state = b ? NO_MATCH : search_state + 1;
            else if (search_state == TWO_ZEROS) {
                if (b == 1)
                    search_state = ONE;
                else if (b > 1) {
                    if (b == 3)
                        unesc_index--;
                    search_state = NO_MATCH;
                }
            }
            else {

                search_state = NO_MATCH;
                start_code_found = 1;
                break;
            }
        }
        if ((s->flags & PARSER_FLAG_COMPLETE_FRAMES) &&
                unesc_index >= UNESCAPED_THRESHOLD &&
                vpc->prev_start_code == (VC1_CODE_FRAME & 0xFF))
        {



            vc1_extract_header(s, avctx, unesc_buffer, unesc_index);
            break;
        }
        if (unesc_index >= UNESCAPED_THRESHOLD && !start_code_found) {
            while (i < buf_size) {
                if (search_state == NO_MATCH) {
                    i += vpc->v.vc1dsp.startcode_find_candidate(buf + i, buf_size - i);
                    if (i < buf_size) {
                        search_state = ONE_ZERO;
                    }
                    i++;
                } else {
                    b = buf[i++];
                    if (search_state == ONE_ZERO)
                        search_state = b ? NO_MATCH : TWO_ZEROS;
                    else if (search_state == TWO_ZEROS) {
                        if (b >= 1)
                            search_state = b == 1 ? ONE : NO_MATCH;
                    }
                    else {
                        search_state = NO_MATCH;
                        start_code_found = 1;
                        break;
                    }
                }
            }
        }
        if (start_code_found) {
            vc1_extract_header(s, avctx, unesc_buffer, unesc_index);

            vpc->prev_start_code = b;
            unesc_index = 0;

            if (!(s->flags & PARSER_FLAG_COMPLETE_FRAMES)) {
                if (!pic_found && (b == (VC1_CODE_FRAME & 0xFF) || b == (VC1_CODE_FIELD & 0xFF))) {
                    pic_found = 1;
                }
                else if (pic_found && b != (VC1_CODE_FIELD & 0xFF) && b != (VC1_CODE_SLICE & 0xFF)) {
                    next = i - 4;
                    pic_found = b == (VC1_CODE_FRAME & 0xFF);
                    break;
                }
            }
        }
    }

    vpc->pc.frame_start_found = pic_found;
    vpc->unesc_index = unesc_index;
    vpc->search_state = search_state;

    if (s->flags & PARSER_FLAG_COMPLETE_FRAMES) {
        next = buf_size;
    } else {
        if (ff_combine_frame(&vpc->pc, next, &buf, &buf_size) < 0) {
            vpc->bytes_to_skip = 0;
            *poutbuf = ((void*)0);
            *poutbuf_size = 0;
            return buf_size;
        }
    }
    vpc->bytes_to_skip = 4;
    if (next < 0 && next != END_NOT_FOUND)
        vpc->bytes_to_skip += next;

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
