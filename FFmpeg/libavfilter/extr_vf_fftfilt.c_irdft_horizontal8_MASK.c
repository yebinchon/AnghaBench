#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_5__ {int** rdft_hdata; int* rdft_hlen; int* rdft_vlen; int /*<<< orphan*/ * ihrdft; } ;
typedef  TYPE_1__ FFTFILTContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(FFTFILTContext *s, AVFrame *out, int w, int h, int plane)
{
    int i, j;

    for (i = 0; i < h; i++)
        FUNC1(s->ihrdft[plane], s->rdft_hdata[plane] + i * s->rdft_hlen[plane]);

    for (i = 0; i < h; i++)
        for (j = 0; j < w; j++)
            *(out->data[plane] + out->linesize[plane] * i + j) = FUNC0(s->rdft_hdata[plane][i
                                                                         *s->rdft_hlen[plane] + j] * 4 /
                                                                         (s->rdft_hlen[plane] *
                                                                          s->rdft_vlen[plane]), 0, 255);
}