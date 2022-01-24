#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_3__ {int dstH; int chrDstH; int* vLumFilterPos; int* vChrFilterPos; int vLumFilterSize; int vChrFilterSize; int chrSrcVSubSample; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(SwsContext *c, int *out_lum_size, int *out_chr_size)
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
        int chrY      = (int64_t)lumY * chrDstH / dstH;
        int nextSlice = FUNC0(lumFilterPos[lumY] + lumFilterSize - 1,
                              ((chrFilterPos[chrY] + chrFilterSize - 1)
                               << chrSubSample));

        nextSlice >>= chrSubSample;
        nextSlice <<= chrSubSample;
        (*out_lum_size) = FUNC0((*out_lum_size), nextSlice - lumFilterPos[lumY]);
        (*out_chr_size) = FUNC0((*out_chr_size), (nextSlice >> chrSubSample) - chrFilterPos[chrY]);
    }
}