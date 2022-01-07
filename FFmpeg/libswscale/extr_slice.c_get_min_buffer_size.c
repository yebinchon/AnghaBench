
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int dstH; int chrDstH; int* vLumFilterPos; int* vChrFilterPos; int vLumFilterSize; int vChrFilterSize; int chrSrcVSubSample; } ;
typedef TYPE_1__ SwsContext ;


 int FFMAX (int,int) ;

__attribute__((used)) static void get_min_buffer_size(SwsContext *c, int *out_lum_size, int *out_chr_size)
{
    int lumY;
    int dstH = c->dstH;
    int chrDstH = c->chrDstH;
    int *lumFilterPos = c->vLumFilterPos;
    int *chrFilterPos = c->vChrFilterPos;
    int lumFilterSize = c->vLumFilterSize;
    int chrFilterSize = c->vChrFilterSize;
    int chrSubSample = c->chrSrcVSubSample;

    *out_lum_size = lumFilterSize;
    *out_chr_size = chrFilterSize;

    for (lumY = 0; lumY < dstH; lumY++) {
        int chrY = (int64_t)lumY * chrDstH / dstH;
        int nextSlice = FFMAX(lumFilterPos[lumY] + lumFilterSize - 1,
                              ((chrFilterPos[chrY] + chrFilterSize - 1)
                               << chrSubSample));

        nextSlice >>= chrSubSample;
        nextSlice <<= chrSubSample;
        (*out_lum_size) = FFMAX((*out_lum_size), nextSlice - lumFilterPos[lumY]);
        (*out_chr_size) = FFMAX((*out_chr_size), (nextSlice >> chrSubSample) - chrFilterPos[chrY]);
    }
}
