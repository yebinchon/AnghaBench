#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float* input; float* workspace; } ;
typedef  TYPE_1__ network ;
struct TYPE_9__ {int outputs; int batch; float* output; float* weights; int n; int c; int groups; int size; int h; int w; float* binary_input; int out_w; int out_h; int nweights; scalar_t__ xnor; scalar_t__ binary; int /*<<< orphan*/  activation; int /*<<< orphan*/  biases; scalar_t__ batch_normalize; int /*<<< orphan*/  pad; int /*<<< orphan*/  stride; int /*<<< orphan*/  binary_weights; } ;
typedef  TYPE_2__ convolutional_layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (float*,int,float*) ; 
 int /*<<< orphan*/  FUNC3 (float*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,float*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,float*,int,float*,int,int,float*,int) ; 
 int /*<<< orphan*/  FUNC7 (float*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(convolutional_layer l, network net)
{
    int i, j;

    FUNC4(l.outputs*l.batch, 0, l.output, 1);

    if(l.xnor){
        FUNC3(l.weights, l.n, l.c/l.groups*l.size*l.size, l.binary_weights);
        FUNC8(&l);
        FUNC2(net.input, l.c*l.h*l.w*l.batch, l.binary_input);
        net.input = l.binary_input;
    }

    int m = l.n/l.groups;
    int k = l.size*l.size*l.c/l.groups;
    int n = l.out_w*l.out_h;
    for(i = 0; i < l.batch; ++i){
        for(j = 0; j < l.groups; ++j){
            float *a = l.weights + j*l.nweights/l.groups;
            float *b = net.workspace;
            float *c = l.output + (i*l.groups + j)*n*m;
            float *im =  net.input + (i*l.groups + j)*l.c/l.groups*l.h*l.w;

            if (l.size == 1) {
                b = im;
            } else {
                FUNC7(im, l.c/l.groups, l.h, l.w, l.size, l.stride, l.pad, b);
            }
            FUNC6(0,0,m,n,k,1,a,k,b,n,1,c,n);
        }
    }

    if(l.batch_normalize){
        FUNC5(l, net);
    } else {
        FUNC1(l.output, l.biases, l.batch, l.n, l.out_h*l.out_w);
    }

    FUNC0(l.output, l.outputs*l.batch, l.activation);
    if(l.binary || l.xnor) FUNC8(&l);
}