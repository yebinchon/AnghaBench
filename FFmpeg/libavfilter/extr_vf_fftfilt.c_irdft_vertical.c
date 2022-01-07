
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* rdft_hlen; int* rdft_vlen; int ** rdft_vdata; int ** rdft_hdata; int * ivrdft; } ;
typedef TYPE_1__ FFTFILTContext ;


 int av_rdft_calc (int ,int *) ;

__attribute__((used)) static void irdft_vertical(FFTFILTContext *s, int h, int plane)
{
    int i, j;

    for (i = 0; i < s->rdft_hlen[plane]; i++)
        av_rdft_calc(s->ivrdft[plane], s->rdft_vdata[plane] + i * s->rdft_vlen[plane]);

    for (i = 0; i < s->rdft_hlen[plane]; i++)
        for (j = 0; j < h; j++)
            s->rdft_hdata[plane][j * s->rdft_hlen[plane] + i] =
            s->rdft_vdata[plane][i * s->rdft_vlen[plane] + j];
}
