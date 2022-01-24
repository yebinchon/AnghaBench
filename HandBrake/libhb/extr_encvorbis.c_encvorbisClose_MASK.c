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
struct TYPE_5__ {struct TYPE_5__* buf; scalar_t__ list; int /*<<< orphan*/  vd; int /*<<< orphan*/  vi; int /*<<< orphan*/  vb; int /*<<< orphan*/  vc; } ;
typedef  TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_work_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(hb_work_object_t * w)
{
    hb_work_private_t *pv = w->private_data;

    FUNC3(&pv->vc);
    FUNC2(&pv->vb);
    FUNC5(&pv->vi);
    FUNC4(&pv->vd);

    if (pv->list)
    {
        FUNC1(&pv->list);
    }

    FUNC0(pv->buf);
    FUNC0(pv);
    w->private_data = NULL;
}