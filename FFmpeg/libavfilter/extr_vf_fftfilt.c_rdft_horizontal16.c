
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int* linesize; scalar_t__* data; } ;
struct TYPE_5__ {int* rdft_hlen; int ** rdft_hdata; int * hrdft; } ;
typedef TYPE_1__ FFTFILTContext ;
typedef TYPE_2__ AVFrame ;


 int av_rdft_calc (int ,int *) ;
 int copy_rev (int *,int,int) ;

__attribute__((used)) static void rdft_horizontal16(FFTFILTContext *s, AVFrame *in, int w, int h, int plane)
{
    const uint16_t *src = (const uint16_t *)in->data[plane];
    int linesize = in->linesize[plane] / 2;
    int i, j;

    for (i = 0; i < h; i++) {
        for (j = 0; j < w; j++)
            s->rdft_hdata[plane][i * s->rdft_hlen[plane] + j] = *(src + linesize * i + j);

        copy_rev(s->rdft_hdata[plane] + i * s->rdft_hlen[plane], w, s->rdft_hlen[plane]);
    }

    for (i = 0; i < h; i++)
        av_rdft_calc(s->hrdft[plane], s->rdft_hdata[plane] + i * s->rdft_hlen[plane]);
}
