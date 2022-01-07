
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int width; int height; int row; int col; int * data; int * enc; } ;
struct TYPE_5__ {int cols; int rows; int block_width; int image_width; int block_height; int image_height; } ;
typedef TYPE_1__ FlashSV2Context ;
typedef TYPE_2__ Block ;



__attribute__((used)) static void init_blocks(FlashSV2Context * s, Block * blocks,
                        uint8_t * encbuf, uint8_t * databuf)
{
    int row, col;
    Block *b;
    for (col = 0; col < s->cols; col++) {
        for (row = 0; row < s->rows; row++) {
            b = blocks + (col + row * s->cols);
            b->width = (col < s->cols - 1) ?
                s->block_width :
                s->image_width - col * s->block_width;

            b->height = (row < s->rows - 1) ?
                s->block_height :
                s->image_height - row * s->block_height;

            b->row = row;
            b->col = col;
            b->enc = encbuf;
            b->data = databuf;
            encbuf += b->width * b->height * 3;
            databuf += !databuf ? 0 : b->width * b->height * 6;
        }
    }
}
