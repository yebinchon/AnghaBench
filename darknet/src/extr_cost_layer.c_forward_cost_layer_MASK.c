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
struct TYPE_5__ {scalar_t__* truth; scalar_t__* input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {scalar_t__ cost_type; int batch; int inputs; int /*<<< orphan*/  output; int /*<<< orphan*/ * cost; int /*<<< orphan*/  delta; } ;
typedef  TYPE_2__ cost_layer ;

/* Variables and functions */
 scalar_t__ L1 ; 
 scalar_t__ MASKED ; 
 scalar_t__ SECRET_NUM ; 
 scalar_t__ SMOOTH ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(cost_layer l, network net)
{
    if (!net.truth) return;
    if(l.cost_type == MASKED){
        int i;
        for(i = 0; i < l.batch*l.inputs; ++i){
            if(net.truth[i] == SECRET_NUM) net.input[i] = SECRET_NUM;
        }
    }
    if(l.cost_type == SMOOTH){
        FUNC2(l.batch*l.inputs, net.input, net.truth, l.delta, l.output);
    }else if(l.cost_type == L1){
        FUNC0(l.batch*l.inputs, net.input, net.truth, l.delta, l.output);
    } else {
        FUNC1(l.batch*l.inputs, net.input, net.truth, l.delta, l.output);
    }
    l.cost[0] = FUNC3(l.output, l.batch*l.inputs);
}