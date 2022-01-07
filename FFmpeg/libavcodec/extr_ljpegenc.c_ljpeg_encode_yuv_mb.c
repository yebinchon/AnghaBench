
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* linesize; int** data; } ;
struct TYPE_5__ {int* hsample; int* vsample; int huff_code_dc_chrominance; int huff_size_dc_chrominance; int huff_code_dc_luminance; int huff_size_dc_luminance; } ;
typedef int PutBitContext ;
typedef TYPE_1__ LJpegEncContext ;
typedef TYPE_2__ AVFrame ;


 int PREDICT (int,int,int,int,int) ;
 int ff_mjpeg_encode_dc (int *,int,int ,int ) ;

__attribute__((used)) static inline void ljpeg_encode_yuv_mb(LJpegEncContext *s, PutBitContext *pb,
                                       const AVFrame *frame, int predictor,
                                       int mb_x, int mb_y)
{
    int i;

    if (mb_x == 0 || mb_y == 0) {
        for (i = 0; i < 3; i++) {
            uint8_t *ptr;
            int x, y, h, v, linesize;
            h = s->hsample[i];
            v = s->vsample[i];
            linesize = frame->linesize[i];

            for (y = 0; y < v; y++) {
                for (x = 0; x < h; x++) {
                    int pred;

                    ptr = frame->data[i] + (linesize * (v * mb_y + y)) + (h * mb_x + x);
                    if (y == 0 && mb_y == 0) {
                        if (x == 0 && mb_x == 0)
                            pred = 128;
                        else
                            pred = ptr[-1];
                    } else {
                        if (x == 0 && mb_x == 0) {
                            pred = ptr[-linesize];
                        } else {
                            PREDICT(pred, ptr[-linesize - 1], ptr[-linesize],
                                    ptr[-1], predictor);
                        }
                    }

                    if (i == 0)
                        ff_mjpeg_encode_dc(pb, *ptr - pred, s->huff_size_dc_luminance, s->huff_code_dc_luminance);
                    else
                        ff_mjpeg_encode_dc(pb, *ptr - pred, s->huff_size_dc_chrominance, s->huff_code_dc_chrominance);
                }
            }
        }
    } else {
        for (i = 0; i < 3; i++) {
            uint8_t *ptr;
            int x, y, h, v, linesize;
            h = s->hsample[i];
            v = s->vsample[i];
            linesize = frame->linesize[i];

            for (y = 0; y < v; y++) {
                for (x = 0; x < h; x++) {
                    int pred;

                    ptr = frame->data[i] + (linesize * (v * mb_y + y)) + (h * mb_x + x);
                    PREDICT(pred, ptr[-linesize - 1], ptr[-linesize], ptr[-1], predictor);

                    if (i == 0)
                        ff_mjpeg_encode_dc(pb, *ptr - pred, s->huff_size_dc_luminance, s->huff_code_dc_luminance);
                    else
                        ff_mjpeg_encode_dc(pb, *ptr - pred, s->huff_size_dc_chrominance, s->huff_code_dc_chrominance);
                }
            }
        }
    }
}
