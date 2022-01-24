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
struct TYPE_8__ {int input; scalar_t__ train; } ;
typedef  TYPE_1__ network ;
struct TYPE_9__ {int outputs; int batch; int steps; int state; int prev_state; int output; int z_cpu; int r_cpu; int forgot_state; int h_cpu; int inputs; scalar_t__ tanh; int /*<<< orphan*/  delta; struct TYPE_9__* wh; struct TYPE_9__* wr; struct TYPE_9__* wz; struct TYPE_9__* uh; struct TYPE_9__* ur; struct TYPE_9__* uz; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  LOGISTIC ; 
 int /*<<< orphan*/  TANH ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int) ; 

void FUNC8(layer l, network net)
{
    network s = net;
    s.train = net.train;
    int i;
    layer uz = *(l.uz);
    layer ur = *(l.ur);
    layer uh = *(l.uh);

    layer wz = *(l.wz);
    layer wr = *(l.wr);
    layer wh = *(l.wh);

    FUNC3(l.outputs * l.batch * l.steps, 0, uz.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, ur.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, uh.delta, 1);

    FUNC3(l.outputs * l.batch * l.steps, 0, wz.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, wr.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, wh.delta, 1);
    if(net.train) {
        FUNC3(l.outputs * l.batch * l.steps, 0, l.delta, 1);
        FUNC2(l.outputs*l.batch, l.state, 1, l.prev_state, 1);
    }

    for (i = 0; i < l.steps; ++i) {
        s.input = l.state;
        FUNC4(wz, s);
        FUNC4(wr, s);

        s.input = net.input;
        FUNC4(uz, s);
        FUNC4(ur, s);
        FUNC4(uh, s);


        FUNC2(l.outputs*l.batch, uz.output, 1, l.z_cpu, 1);
        FUNC1(l.outputs*l.batch, 1, wz.output, 1, l.z_cpu, 1);

        FUNC2(l.outputs*l.batch, ur.output, 1, l.r_cpu, 1);
        FUNC1(l.outputs*l.batch, 1, wr.output, 1, l.r_cpu, 1);

        FUNC0(l.z_cpu, l.outputs*l.batch, LOGISTIC);
        FUNC0(l.r_cpu, l.outputs*l.batch, LOGISTIC);

        FUNC2(l.outputs*l.batch, l.state, 1, l.forgot_state, 1);
        FUNC6(l.outputs*l.batch, l.r_cpu, 1, l.forgot_state, 1);

        s.input = l.forgot_state;
        FUNC4(wh, s);

        FUNC2(l.outputs*l.batch, uh.output, 1, l.h_cpu, 1);
        FUNC1(l.outputs*l.batch, 1, wh.output, 1, l.h_cpu, 1);

        if(l.tanh){
            FUNC0(l.h_cpu, l.outputs*l.batch, TANH);
        } else {
            FUNC0(l.h_cpu, l.outputs*l.batch, LOGISTIC);
        }

        FUNC7(l.state, l.h_cpu, l.z_cpu, l.outputs*l.batch, l.output);

        FUNC2(l.outputs*l.batch, l.output, 1, l.state, 1);

        net.input += l.inputs*l.batch;
        l.output += l.outputs*l.batch;
        FUNC5(&uz, 1);
        FUNC5(&ur, 1);
        FUNC5(&uh, 1);

        FUNC5(&wz, 1);
        FUNC5(&wr, 1);
        FUNC5(&wh, 1);
    }
}