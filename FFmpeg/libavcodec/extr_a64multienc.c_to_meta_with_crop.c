
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int C64XRES ;
 int C64YRES ;
 int FFMIN (int ,int) ;

__attribute__((used)) static void to_meta_with_crop(AVCodecContext *avctx,
                              const AVFrame *p, int *dest)
{
    int blockx, blocky, x, y;
    int luma = 0;
    int height = FFMIN(avctx->height, C64YRES);
    int width = FFMIN(avctx->width , C64XRES);
    uint8_t *src = p->data[0];

    for (blocky = 0; blocky < C64YRES; blocky += 8) {
        for (blockx = 0; blockx < C64XRES; blockx += 8) {
            for (y = blocky; y < blocky + 8 && y < C64YRES; y++) {
                for (x = blockx; x < blockx + 8 && x < C64XRES; x += 2) {
                    if(x < width && y < height) {
                        if (x + 1 < width) {

                            luma = (src[(x + 0 + y * p->linesize[0])] +
                                    src[(x + 1 + y * p->linesize[0])]) / 2;
                        } else {
                            luma = src[(x + y * p->linesize[0])];
                        }

                        dest[0] = luma;
                    }
                    dest++;
                }
            }
        }
    }
}
