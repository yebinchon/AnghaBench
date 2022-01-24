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
struct TYPE_8__ {TYPE_1__* dst; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* fillborders ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ FillBordersContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *inlink, AVFrame *frame)
{
    FillBordersContext *s = inlink->dst->priv;

    s->fillborders(s, frame);

    return FUNC0(inlink->dst->outputs[0], frame);
}