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
struct TYPE_7__ {float* input; float* delta; } ;
typedef  TYPE_1__ network ;
struct TYPE_8__ {int outputs; int batch; float* delta; int inputs; float* weight_updates; float* weights; int /*<<< orphan*/  bias_updates; scalar_t__ batch_normalize; int /*<<< orphan*/  activation; int /*<<< orphan*/  output; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int,int,int,float*,int,float*,int,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 

void FUNC4(layer l, network net)
{
    FUNC3(l.output, l.outputs*l.batch, l.activation, l.delta);

    if(l.batch_normalize){
        FUNC0(l, net);
    } else {
        FUNC1(l.bias_updates, l.delta, l.batch, l.outputs, 1);
    }

    int m = l.outputs;
    int k = l.batch;
    int n = l.inputs;
    float *a = l.delta;
    float *b = net.input;
    float *c = l.weight_updates;
    FUNC2(1,0,m,n,k,1,a,m,b,n,1,c,n);

    m = l.batch;
    k = l.outputs;
    n = l.inputs;

    a = l.delta;
    b = l.weights;
    c = net.delta;

    if(c) FUNC2(0,0,m,n,k,1,a,k,b,n,1,c,n);
}