#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint8_t ;
struct TYPE_5__ {int zoom; unsigned int h; unsigned int w; unsigned int* contrast; TYPE_1__* outpicref; } ;
struct TYPE_4__ {int* linesize; unsigned int** data; } ;
typedef  TYPE_2__ AudioVectorScopeContext ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 

__attribute__((used)) static void FUNC1(AudioVectorScopeContext *s, unsigned x, unsigned y)
{
    const int linesize = s->outpicref->linesize[0];
    uint8_t *dst;

    if (s->zoom > 1) {
        if (y >= s->h || x >= s->w)
            return;
    } else {
        y = FUNC0(y, s->h - 1);
        x = FUNC0(x, s->w - 1);
    }

    dst = &s->outpicref->data[0][y * linesize + x * 4];
    dst[0] = FUNC0(dst[0] + s->contrast[0], 255);
    dst[1] = FUNC0(dst[1] + s->contrast[1], 255);
    dst[2] = FUNC0(dst[2] + s->contrast[2], 255);
    dst[3] = FUNC0(dst[3] + s->contrast[3], 255);
}