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
struct TYPE_3__ {int x; int y; float w; float h; } ;
typedef  TYPE_1__ box ;

/* Variables and functions */
 float FUNC0 (float) ; 

box FUNC1(float *x, float *biases, int n, int index, int i, int j, int w, int h, int stride)
{
    box b;
    b.x = (i + x[index + 0*stride]) / w;
    b.y = (j + x[index + 1*stride]) / h;
    b.w = FUNC0(x[index + 2*stride]) * biases[2*n]   / w;
    b.h = FUNC0(x[index + 3*stride]) * biases[2*n+1] / h;
    return b;
}