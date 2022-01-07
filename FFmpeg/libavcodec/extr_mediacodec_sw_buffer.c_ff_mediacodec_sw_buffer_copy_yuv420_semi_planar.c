
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int height; int width; } ;
struct TYPE_11__ {int* linesize; int ** data; } ;
struct TYPE_10__ {int offset; } ;
struct TYPE_9__ {int crop_top; int stride; int slice_height; int crop_left; } ;
typedef TYPE_1__ MediaCodecDecContext ;
typedef TYPE_2__ FFAMediaCodecBufferInfo ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int FFALIGN (int,int) ;
 int FFMIN (int,int ) ;
 int memcpy (int *,int *,int) ;

void ff_mediacodec_sw_buffer_copy_yuv420_semi_planar(AVCodecContext *avctx,
                                                     MediaCodecDecContext *s,
                                                     uint8_t *data,
                                                     size_t size,
                                                     FFAMediaCodecBufferInfo *info,
                                                     AVFrame *frame)
{
    int i;
    uint8_t *src = ((void*)0);

    for (i = 0; i < 2; i++) {
        int height;

        src = data + info->offset;
        if (i == 0) {
            height = avctx->height;

            src += s->crop_top * s->stride;
            src += s->crop_left;
        } else if (i == 1) {
            height = avctx->height / 2;

            src += s->slice_height * s->stride;
            src += s->crop_top * s->stride;
            src += s->crop_left;
        }

        if (frame->linesize[i] == s->stride) {
            memcpy(frame->data[i], src, height * s->stride);
        } else {
            int j, width;
            uint8_t *dst = frame->data[i];

            if (i == 0) {
                width = avctx->width;
            } else if (i == 1) {
                width = FFMIN(frame->linesize[i], FFALIGN(avctx->width, 2));
            }

            for (j = 0; j < height; j++) {
                memcpy(dst, src, width);
                src += s->stride;
                dst += frame->linesize[i];
            }
        }
    }
}
