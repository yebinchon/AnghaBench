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
struct TYPE_7__ {TYPE_1__* layers; int /*<<< orphan*/  delta; } ;
typedef  TYPE_2__ network ;
struct TYPE_8__ {int outputs; int batch; size_t index; int /*<<< orphan*/  beta; int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  delta; int /*<<< orphan*/  out_c; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; int /*<<< orphan*/  alpha; int /*<<< orphan*/  activation; int /*<<< orphan*/  output; } ;
typedef  TYPE_3__ layer ;
struct TYPE_6__ {int /*<<< orphan*/  delta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(const layer l, network net)
{
    FUNC1(l.output, l.outputs*l.batch, l.activation, l.delta);
    FUNC0(l.outputs*l.batch, l.alpha, l.delta, 1, net.delta, 1);
    FUNC2(l.batch, l.out_w, l.out_h, l.out_c, l.delta, l.w, l.h, l.c, 1, l.beta, net.layers[l.index].delta);
}