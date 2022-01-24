#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* workq_threadreq_t ;
struct uthread {int /*<<< orphan*/  uu_workq_pri; } ;
struct TYPE_4__ {scalar_t__ tr_qos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct uthread*) ; 

__attribute__((used)) static inline bool
FUNC2(workq_threadreq_t req, struct uthread *uth)
{
	if (FUNC1(req, uth)) {
		return true;
	}

	return req->tr_qos != FUNC0(uth->uu_workq_pri);
}