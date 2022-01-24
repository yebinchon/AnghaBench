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
struct TYPE_8__ {int input; int delta; } ;
typedef  TYPE_1__ network ;
struct TYPE_9__ {int steps; int state; int hidden; int batch; int output; int delta; int inputs; scalar_t__ shortcut; struct TYPE_9__* output_layer; struct TYPE_9__* self_layer; struct TYPE_9__* input_layer; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

void FUNC4(layer l, network net)
{
    network s = net;
    int i;
    layer input_layer = *(l.input_layer);
    layer self_layer = *(l.self_layer);
    layer output_layer = *(l.output_layer);

    FUNC3(&input_layer, l.steps-1);
    FUNC3(&self_layer, l.steps-1);
    FUNC3(&output_layer, l.steps-1);

    l.state += l.hidden*l.batch*l.steps;
    for (i = l.steps-1; i >= 0; --i) {
        FUNC2(l.hidden * l.batch, input_layer.output, 1, l.state, 1);
        FUNC0(l.hidden * l.batch, 1, self_layer.output, 1, l.state, 1);

        s.input = l.state;
        s.delta = self_layer.delta;
        FUNC1(output_layer, s);

        l.state -= l.hidden*l.batch;
        /*
           if(i > 0){
           copy_cpu(l.hidden * l.batch, input_layer.output - l.hidden*l.batch, 1, l.state, 1);
           axpy_cpu(l.hidden * l.batch, 1, self_layer.output - l.hidden*l.batch, 1, l.state, 1);
           }else{
           fill_cpu(l.hidden * l.batch, 0, l.state, 1);
           }
         */

        s.input = l.state;
        s.delta = self_layer.delta - l.hidden*l.batch;
        if (i == 0) s.delta = 0;
        FUNC1(self_layer, s);

        FUNC2(l.hidden*l.batch, self_layer.delta, 1, input_layer.delta, 1);
        if (i > 0 && l.shortcut) FUNC0(l.hidden*l.batch, 1, self_layer.delta, 1, self_layer.delta - l.hidden*l.batch, 1);
        s.input = net.input + i*l.inputs*l.batch;
        if(net.delta) s.delta = net.delta + i*l.inputs*l.batch;
        else s.delta = 0;
        FUNC1(input_layer, s);

        FUNC3(&input_layer, -1);
        FUNC3(&self_layer, -1);
        FUNC3(&output_layer, -1);
    }
}