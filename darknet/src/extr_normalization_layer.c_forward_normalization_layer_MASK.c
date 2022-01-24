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
struct TYPE_5__ {float* input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {int w; int h; int c; int batch; float* squared; float* norms; int size; int beta; float* output; int /*<<< orphan*/  alpha; int /*<<< orphan*/  kappa; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,float*,int) ; 

void FUNC6(const layer layer, network net)
{
    int k,b;
    int w = layer.w;
    int h = layer.h;
    int c = layer.c;
    FUNC5(w*h*c*layer.batch, 0, layer.squared, 1);

    for(b = 0; b < layer.batch; ++b){
        float *squared = layer.squared + w*h*c*b;
        float *norms   = layer.norms + w*h*c*b;
        float *input   = net.input + w*h*c*b;
        FUNC4(w*h*c, 2, input, 1, squared, 1);

        FUNC1(w*h, layer.kappa, norms, 1);
        for(k = 0; k < layer.size/2; ++k){
            FUNC0(w*h, layer.alpha, squared + w*h*k, 1, norms, 1);
        }

        for(k = 1; k < layer.c; ++k){
            FUNC2(w*h, norms + w*h*(k-1), 1, norms + w*h*k, 1);
            int prev = k - ((layer.size-1)/2) - 1;
            int next = k + (layer.size/2);
            if(prev >= 0)      FUNC0(w*h, -layer.alpha, squared + w*h*prev, 1, norms + w*h*k, 1);
            if(next < layer.c) FUNC0(w*h,  layer.alpha, squared + w*h*next, 1, norms + w*h*k, 1);
        }
    }
    FUNC4(w*h*c*layer.batch, -layer.beta, layer.norms, 1, layer.output, 1);
    FUNC3(w*h*c*layer.batch, net.input, 1, layer.output, 1);
}