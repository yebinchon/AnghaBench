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
struct TYPE_5__ {int /*<<< orphan*/  svc_buffer; } ;
struct TYPE_6__ {TYPE_1__ svc_db; } ;
typedef  TYPE_2__ tGATT_HDL_LIST_ELEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(tGATT_HDL_LIST_ELEM *p)
{

    if (p) {
        while (!FUNC2(p->svc_db.svc_buffer)) {
            FUNC4(FUNC0(p->svc_db.svc_buffer, 0));
		}
        FUNC1(p->svc_db.svc_buffer, NULL);
        FUNC3(p, 0, sizeof(tGATT_HDL_LIST_ELEM));
    }
}