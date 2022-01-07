
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int width; int height; int* linesize; int** data; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void extend_edges(AVFrame *buf, int tile_size)
{
    int comp, i, j;

    for (comp = 0; comp < 3; comp++) {
        int shift = comp > 0;
        int w = buf->width >> shift;
        int h = buf->height >> shift;
        int size = comp == 0 ? tile_size : tile_size >> 1;
        int stride = buf->linesize[comp];
        uint8_t *framebuf = buf->data[comp];

        int right = size - (w & (size - 1));
        int bottom = size - (h & (size - 1));

        if ((right == size) && (bottom == size)) {
            return;
        }
        if (right != size) {
            int off = w;
            for (j = 0; j < h; j++) {
                for (i = 0; i < right; i++) {
                    framebuf[off + i] = 0x80;
                }
                off += stride;
            }
        }
        if (bottom != size) {
            int off = h * stride;
            for (j = 0; j < bottom; j++) {
                for (i = 0; i < stride; i++) {
                    framebuf[off + i] = 0x80;
                }
                off += stride;
            }
        }
    }
}
