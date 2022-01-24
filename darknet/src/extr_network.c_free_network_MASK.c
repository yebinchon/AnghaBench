#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; scalar_t__ truth_gpu; scalar_t__ input_gpu; struct TYPE_5__* truth; struct TYPE_5__* input; struct TYPE_5__* layers; } ;
typedef  TYPE_1__ network ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 

void FUNC3(network *net)
{
    int i;
    for(i = 0; i < net->n; ++i){
        FUNC2(net->layers[i]);
    }
    FUNC1(net->layers);
    if(net->input) FUNC1(net->input);
    if(net->truth) FUNC1(net->truth);
#ifdef GPU
    if(net->input_gpu) cuda_free(net->input_gpu);
    if(net->truth_gpu) cuda_free(net->truth_gpu);
#endif
    FUNC1(net);
}