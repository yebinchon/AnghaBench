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
struct TYPE_8__ {int input; scalar_t__ train; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ network ;
struct TYPE_9__ {int outputs; int batch; int steps; int h_cpu; int output; int f_cpu; int i_cpu; int g_cpu; int o_cpu; int temp_cpu; int c_cpu; int cell_cpu; int inputs; int /*<<< orphan*/  delta; struct TYPE_9__* uo; struct TYPE_9__* ug; struct TYPE_9__* ui; struct TYPE_9__* uf; struct TYPE_9__* wo; struct TYPE_9__* wg; struct TYPE_9__* wi; struct TYPE_9__* wf; } ;
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

void FUNC7(layer l, network state)
{
    network s = { 0 };
    s.train = state.train;
    int i;
    layer wf = *(l.wf);
    layer wi = *(l.wi);
    layer wg = *(l.wg);
    layer wo = *(l.wo);

    layer uf = *(l.uf);
    layer ui = *(l.ui);
    layer ug = *(l.ug);
    layer uo = *(l.uo);

    FUNC3(l.outputs * l.batch * l.steps, 0, wf.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, wi.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, wg.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, wo.delta, 1);

    FUNC3(l.outputs * l.batch * l.steps, 0, uf.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, ui.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, ug.delta, 1);
    FUNC3(l.outputs * l.batch * l.steps, 0, uo.delta, 1);
    if (state.train) {
        FUNC3(l.outputs * l.batch * l.steps, 0, l.delta, 1);
    }

    for (i = 0; i < l.steps; ++i) {
        s.input = l.h_cpu;
        FUNC4(wf, s);							
        FUNC4(wi, s);							
        FUNC4(wg, s);							
        FUNC4(wo, s);							

        s.input = state.input;
        FUNC4(uf, s);							
        FUNC4(ui, s);							
        FUNC4(ug, s);							
        FUNC4(uo, s);							

        FUNC2(l.outputs*l.batch, wf.output, 1, l.f_cpu, 1);
        FUNC1(l.outputs*l.batch, 1, uf.output, 1, l.f_cpu, 1);

        FUNC2(l.outputs*l.batch, wi.output, 1, l.i_cpu, 1);	
        FUNC1(l.outputs*l.batch, 1, ui.output, 1, l.i_cpu, 1);	

        FUNC2(l.outputs*l.batch, wg.output, 1, l.g_cpu, 1);	
        FUNC1(l.outputs*l.batch, 1, ug.output, 1, l.g_cpu, 1);	

        FUNC2(l.outputs*l.batch, wo.output, 1, l.o_cpu, 1);	
        FUNC1(l.outputs*l.batch, 1, uo.output, 1, l.o_cpu, 1);	

        FUNC0(l.f_cpu, l.outputs*l.batch, LOGISTIC);		
        FUNC0(l.i_cpu, l.outputs*l.batch, LOGISTIC);		
        FUNC0(l.g_cpu, l.outputs*l.batch, TANH);			
        FUNC0(l.o_cpu, l.outputs*l.batch, LOGISTIC);		

        FUNC2(l.outputs*l.batch, l.i_cpu, 1, l.temp_cpu, 1);		
        FUNC6(l.outputs*l.batch, l.g_cpu, 1, l.temp_cpu, 1);		
        FUNC6(l.outputs*l.batch, l.f_cpu, 1, l.c_cpu, 1);			
        FUNC1(l.outputs*l.batch, 1, l.temp_cpu, 1, l.c_cpu, 1);	

        FUNC2(l.outputs*l.batch, l.c_cpu, 1, l.h_cpu, 1);			
        FUNC0(l.h_cpu, l.outputs*l.batch, TANH);		
        FUNC6(l.outputs*l.batch, l.o_cpu, 1, l.h_cpu, 1);	

        FUNC2(l.outputs*l.batch, l.c_cpu, 1, l.cell_cpu, 1);		
        FUNC2(l.outputs*l.batch, l.h_cpu, 1, l.output, 1);

        state.input += l.inputs*l.batch;
        l.output    += l.outputs*l.batch;
        l.cell_cpu      += l.outputs*l.batch;

        FUNC5(&wf, 1);
        FUNC5(&wi, 1);
        FUNC5(&wg, 1);
        FUNC5(&wo, 1);

        FUNC5(&uf, 1);
        FUNC5(&ui, 1);
        FUNC5(&ug, 1);
        FUNC5(&uo, 1);
    }
}