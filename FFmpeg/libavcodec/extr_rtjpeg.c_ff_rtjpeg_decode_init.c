
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* idct_permutation; } ;
struct TYPE_5__ {int w; int h; int * cquant; int * lquant; TYPE_1__ idsp; } ;
typedef TYPE_2__ RTJpegContext ;



void ff_rtjpeg_decode_init(RTJpegContext *c, int width, int height,
                           const uint32_t *lquant, const uint32_t *cquant) {
    int i;
    for (i = 0; i < 64; i++) {
        int p = c->idsp.idct_permutation[i];
        c->lquant[p] = lquant[i];
        c->cquant[p] = cquant[i];
    }
    c->w = width;
    c->h = height;
}
