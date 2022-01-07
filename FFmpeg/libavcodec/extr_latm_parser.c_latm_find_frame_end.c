
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int frame_start_found; int state; } ;
struct TYPE_6__ {int count; TYPE_1__ pc; } ;
typedef TYPE_1__ ParseContext ;
typedef TYPE_2__ LATMParseContext ;
typedef TYPE_3__ AVCodecParserContext ;


 int END_NOT_FOUND ;
 int LATM_HEADER ;
 int LATM_MASK ;
 int LATM_SIZE_MASK ;

__attribute__((used)) static int latm_find_frame_end(AVCodecParserContext *s1, const uint8_t *buf,
                               int buf_size)
{
    LATMParseContext *s = s1->priv_data;
    ParseContext *pc = &s->pc;
    int pic_found, i;
    uint32_t state;

    pic_found = pc->frame_start_found;
    state = pc->state;

    if (!pic_found) {
        for (i = 0; i < buf_size; i++) {
            state = (state<<8) | buf[i];
            if ((state & LATM_MASK) == LATM_HEADER) {
                i++;
                s->count = -i;
                pic_found = 1;
                break;
            }
        }
    }

    if (pic_found) {

        if (buf_size == 0)
            return 0;
        if ((state & LATM_SIZE_MASK) - s->count <= buf_size) {
            pc->frame_start_found = 0;
            pc->state = -1;
            return (state & LATM_SIZE_MASK) - s->count;
        }
    }

    s->count += buf_size;
    pc->frame_start_found = pic_found;
    pc->state = state;

    return END_NOT_FOUND;
}
