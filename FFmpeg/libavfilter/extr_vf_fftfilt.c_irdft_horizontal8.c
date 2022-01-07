
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* linesize; int ** data; } ;
struct TYPE_5__ {int** rdft_hdata; int* rdft_hlen; int* rdft_vlen; int * ihrdft; } ;
typedef TYPE_1__ FFTFILTContext ;
typedef TYPE_2__ AVFrame ;


 int av_clip (int,int ,int) ;
 int av_rdft_calc (int ,int*) ;

__attribute__((used)) static void irdft_horizontal8(FFTFILTContext *s, AVFrame *out, int w, int h, int plane)
{
    int i, j;

    for (i = 0; i < h; i++)
        av_rdft_calc(s->ihrdft[plane], s->rdft_hdata[plane] + i * s->rdft_hlen[plane]);

    for (i = 0; i < h; i++)
        for (j = 0; j < w; j++)
            *(out->data[plane] + out->linesize[plane] * i + j) = av_clip(s->rdft_hdata[plane][i
                                                                         *s->rdft_hlen[plane] + j] * 4 /
                                                                         (s->rdft_hlen[plane] *
                                                                          s->rdft_vlen[plane]), 0, 255);
}
