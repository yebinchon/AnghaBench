
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int transparent_index; int flags; } ;
typedef TYPE_1__ GIFContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_DEBUG ;
 int GF_OFFSETTING ;
 int av_log (TYPE_2__*,int ,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void gif_crop_translucent(AVCodecContext *avctx,
                                 const uint8_t *buf, const int linesize,
                                 int *width, int *height,
                                 int *x_start, int *y_start)
{
    GIFContext *s = avctx->priv_data;
    int trans = s->transparent_index;


    if ((s->flags & GF_OFFSETTING) && trans >= 0) {
        const int w = avctx->width;
        const int h = avctx->height;
        int x_end = w - 1,
            y_end = h - 1;


        while (*y_start < y_end) {
            int is_trans = 1;
            for (int i = 0; i < w; i++) {
                if (buf[linesize * *y_start + i] != trans) {
                    is_trans = 0;
                    break;
                }
            }

            if (!is_trans)
                break;
            (*y_start)++;
        }


        while (y_end > *y_start) {
            int is_trans = 1;
            for (int i = 0; i < w; i++) {
                if (buf[linesize * y_end + i] != trans) {
                    is_trans = 0;
                    break;
                }
            }
            if (!is_trans)
                break;
            y_end--;
        }


        while (*x_start < x_end) {
            int is_trans = 1;
            for (int i = *y_start; i < y_end; i++) {
                if (buf[linesize * i + *x_start] != trans) {
                    is_trans = 0;
                    break;
                }
            }
            if (!is_trans)
                break;
            (*x_start)++;
        }


        while (x_end > *x_start) {
            int is_trans = 1;
            for (int i = *y_start; i < y_end; i++) {
                if (buf[linesize * i + x_end] != trans) {
                    is_trans = 0;
                    break;
                }
            }
            if (!is_trans)
                break;
            x_end--;
        }

        *height = y_end + 1 - *y_start;
        *width = x_end + 1 - *x_start;
        av_log(avctx, AV_LOG_DEBUG,"%dx%d image at pos (%d;%d) [area:%dx%d]\n",
               *width, *height, *x_start, *y_start, avctx->width, avctx->height);
    }
}
