
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int frame_start_found; int state; } ;
typedef TYPE_1__ ParseContext ;


 int END_NOT_FOUND ;
 int EXT_STARTCODE ;
 int SLICE_STARTCODE ;
 int VOP_STARTCODE ;

int ff_mpeg4_find_frame_end(ParseContext *pc, const uint8_t *buf, int buf_size)
{
    int vop_found, i;
    uint32_t state;

    vop_found = pc->frame_start_found;
    state = pc->state;

    i = 0;
    if (!vop_found) {
        for (i = 0; i < buf_size; i++) {
            state = (state << 8) | buf[i];
            if (state == VOP_STARTCODE) {
                i++;
                vop_found = 1;
                break;
            }
        }
    }

    if (vop_found) {

        if (buf_size == 0)
            return 0;
        for (; i < buf_size; i++) {
            state = (state << 8) | buf[i];
            if ((state & 0xFFFFFF00) == 0x100) {
                if (state == SLICE_STARTCODE || state == EXT_STARTCODE)
                    continue;
                pc->frame_start_found = 0;
                pc->state = -1;
                return i - 3;
            }
        }
    }
    pc->frame_start_found = vop_found;
    pc->state = state;
    return END_NOT_FOUND;
}
