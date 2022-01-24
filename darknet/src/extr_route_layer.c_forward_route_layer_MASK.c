#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int n; int* input_layers; int* input_sizes; int batch; int outputs; scalar_t__ output; } ;
typedef  TYPE_2__ route_layer ;
struct TYPE_8__ {TYPE_1__* layers; } ;
typedef  TYPE_3__ network ;
struct TYPE_6__ {float* output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float*,int,scalar_t__,int) ; 

void FUNC1(const route_layer l, network net)
{
    int i, j;
    int offset = 0;
    for(i = 0; i < l.n; ++i){
        int index = l.input_layers[i];
        float *input = net.layers[index].output;
        int input_size = l.input_sizes[i];
        for(j = 0; j < l.batch; ++j){
            FUNC0(input_size, input + j*input_size, 1, l.output + offset + j*l.outputs, 1);
        }
        offset += input_size;
    }
}