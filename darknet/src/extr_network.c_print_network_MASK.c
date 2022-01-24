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
struct TYPE_4__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_5__ {float* output; int outputs; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 float FUNC1 (float*,int) ; 
 int /*<<< orphan*/  stderr ; 
 float FUNC2 (float*,int) ; 

void FUNC3(network *net)
{
    int i,j;
    for(i = 0; i < net->n; ++i){
        layer l = net->layers[i];
        float *output = l.output;
        int n = l.outputs;
        float mean = FUNC1(output, n);
        float vari = FUNC2(output, n);
        FUNC0(stderr, "Layer %d - Mean: %f, Variance: %f\n",i,mean, vari);
        if(n > 100) n = 100;
        for(j = 0; j < n; ++j) FUNC0(stderr, "%f, ", output[j]);
        if(n == 100)FUNC0(stderr,".....\n");
        FUNC0(stderr, "\n");
    }
}