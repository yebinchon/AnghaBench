
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * idct_permutation; } ;
struct TYPE_4__ {TYPE_3__ idsp; int * scan; } ;
typedef TYPE_1__ RTJpegContext ;
typedef int AVCodecContext ;


 int ff_idctdsp_init (TYPE_3__*,int *) ;
 int* ff_zigzag_direct ;

void ff_rtjpeg_init(RTJpegContext *c, AVCodecContext *avctx)
{
    int i;

    ff_idctdsp_init(&c->idsp, avctx);

    for (i = 0; i < 64; i++) {
        int z = ff_zigzag_direct[i];
        z = ((z << 3) | (z >> 3)) & 63;


        c->scan[i] = c->idsp.idct_permutation[z];
    }
}
