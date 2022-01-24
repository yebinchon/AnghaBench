#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int x; int y; int w; int h; } ;
typedef  TYPE_1__ box ;

/* Variables and functions */
 float FUNC0 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC1 (float*,float*,int,int,int,int,int,int,int) ; 
 float FUNC2 (int) ; 

float FUNC3(box truth, float *x, float *biases, int n, int index, int i, int j, int w, int h, float *delta, float scale, int stride)
{
    box pred = FUNC1(x, biases, n, index, i, j, w, h, stride);
    float iou = FUNC0(pred, truth);

    float tx = (truth.x*w - i);
    float ty = (truth.y*h - j);
    float tw = FUNC2(truth.w*w / biases[2*n]);
    float th = FUNC2(truth.h*h / biases[2*n + 1]);

    delta[index + 0*stride] = scale * (tx - x[index + 0*stride]);
    delta[index + 1*stride] = scale * (ty - x[index + 1*stride]);
    delta[index + 2*stride] = scale * (tw - x[index + 2*stride]);
    delta[index + 3*stride] = scale * (th - x[index + 3*stride]);
    return iou;
}