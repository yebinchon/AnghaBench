
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ dirty; scalar_t__ len; scalar_t__ start; } ;
struct TYPE_5__ {int rows; int cols; TYPE_2__* frame_blocks; } ;
typedef TYPE_1__ FlashSV2Context ;
typedef TYPE_2__ Block ;


 int write_block (TYPE_2__*,int *,int) ;

__attribute__((used)) static int write_all_blocks(FlashSV2Context * s, uint8_t * buf,
                            int buf_size)
{
    int row, col, buf_pos = 0, len;
    Block *b;
    for (row = 0; row < s->rows; row++) {
        for (col = 0; col < s->cols; col++) {
            b = s->frame_blocks + row * s->cols + col;
            len = write_block(b, buf + buf_pos, buf_size - buf_pos);
            b->start = b->len = b->dirty = 0;
            if (len < 0)
                return len;
            buf_pos += len;
        }
    }
    return buf_pos;
}
