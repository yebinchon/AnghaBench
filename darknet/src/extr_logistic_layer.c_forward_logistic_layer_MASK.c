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
struct TYPE_5__ {scalar_t__ truth; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int inputs; int /*<<< orphan*/  loss; int /*<<< orphan*/ * cost; int /*<<< orphan*/  delta; int /*<<< orphan*/  output; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  LOGISTIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(const layer l, network net)
{
    FUNC1(l.outputs*l.batch, net.input, 1, l.output, 1);
    FUNC0(l.output, l.outputs*l.batch, LOGISTIC);
    if(net.truth){
        FUNC2(l.batch*l.inputs, l.output, net.truth, l.delta, l.loss);
        l.cost[0] = FUNC3(l.loss, l.batch*l.inputs);
    }
}