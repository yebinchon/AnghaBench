
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {int state64; int frame_start_found; } ;
struct TYPE_5__ {int cur_byte; int remaining; int h; int w; TYPE_1__ pc; } ;
typedef TYPE_1__ ParseContext ;
typedef TYPE_2__ DNXHDParserContext ;


 int END_NOT_FOUND ;
 int avpriv_dnxhd_get_frame_size (int) ;
 int avpriv_dnxhd_get_hr_frame_size (int,int,int) ;
 scalar_t__ ff_dnxhd_check_header_prefix (int) ;

__attribute__((used)) static int dnxhd_find_frame_end(DNXHDParserContext *dctx,
                                const uint8_t *buf, int buf_size)
{
    ParseContext *pc = &dctx->pc;
    uint64_t state = pc->state64;
    int pic_found = pc->frame_start_found;
    int i = 0;

    if (!pic_found) {
        for (i = 0; i < buf_size; i++) {
            state = (state << 8) | buf[i];
            if (ff_dnxhd_check_header_prefix(state & 0xffffffffff00LL) != 0) {
                i++;
                pic_found = 1;
                dctx->cur_byte = 0;
                dctx->remaining = 0;
                break;
            }
        }
    }

    if (pic_found && !dctx->remaining) {
        if (!buf_size)
            return 0;
        for (; i < buf_size; i++) {
            dctx->cur_byte++;
            state = (state << 8) | buf[i];

            if (dctx->cur_byte == 24) {
                dctx->h = (state >> 32) & 0xFFFF;
            } else if (dctx->cur_byte == 26) {
                dctx->w = (state >> 32) & 0xFFFF;
            } else if (dctx->cur_byte == 42) {
                int cid = (state >> 32) & 0xFFFFFFFF;
                int remaining;

                if (cid <= 0)
                    continue;

                remaining = avpriv_dnxhd_get_frame_size(cid);
                if (remaining <= 0) {
                    remaining = avpriv_dnxhd_get_hr_frame_size(cid, dctx->w, dctx->h);
                    if (remaining <= 0)
                        continue;
                }
                remaining += i - 47;
                dctx->remaining = remaining;
                if (buf_size >= dctx->remaining) {
                    pc->frame_start_found = 0;
                    pc->state64 = -1;
                    dctx->cur_byte = 0;
                    dctx->remaining = 0;
                    return remaining;
                } else {
                    dctx->remaining -= buf_size;

                    state = -1;
                    dctx->cur_byte += buf_size - i;
                    break;
                }
            }
        }
    } else if (pic_found) {
        if (dctx->remaining > buf_size) {
            dctx->remaining -= buf_size;
        } else {
            int remaining = dctx->remaining;

            pc->frame_start_found = 0;
            pc->state64 = -1;
            dctx->cur_byte = 0;
            dctx->remaining = 0;
            return remaining;
        }
    }
    pc->frame_start_found = pic_found;
    pc->state64 = state;
    return END_NOT_FOUND;
}
