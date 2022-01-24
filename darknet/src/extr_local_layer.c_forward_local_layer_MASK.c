#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float* input; int /*<<< orphan*/  workspace; } ;
typedef  TYPE_1__ network ;
struct TYPE_8__ {int batch; int outputs; float* output; int w; int h; int c; int size; float* weights; int n; int /*<<< orphan*/  activation; int /*<<< orphan*/  pad; int /*<<< orphan*/  stride; int /*<<< orphan*/  biases; } ;
typedef  TYPE_2__ local_layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,float*,int,float*,int,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__ const) ; 
 int FUNC5 (TYPE_2__ const) ; 

void FUNC6(const local_layer l, network net)
{
    int out_h = FUNC4(l);
    int out_w = FUNC5(l);
    int i, j;
    int locations = out_h * out_w;

    for(i = 0; i < l.batch; ++i){
        FUNC1(l.outputs, l.biases, 1, l.output + i*l.outputs, 1);
    }

    for(i = 0; i < l.batch; ++i){
        float *input = net.input + i*l.w*l.h*l.c;
        FUNC3(input, l.c, l.h, l.w, 
                l.size, l.stride, l.pad, net.workspace);
        float *output = l.output + i*l.outputs;
        for(j = 0; j < locations; ++j){
            float *a = l.weights + j*l.size*l.size*l.c*l.n;
            float *b = net.workspace + j;
            float *c = output + j;

            int m = l.n;
            int n = 1;
            int k = l.size*l.size*l.c;

            FUNC2(0,0,m,n,k,1,a,k,b,locations,1,c,locations);
        }
    }
    FUNC0(l.output, l.outputs*l.batch, l.activation);
}