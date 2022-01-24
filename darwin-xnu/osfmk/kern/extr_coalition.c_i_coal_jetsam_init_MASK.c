#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_2__* coalition_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  other; int /*<<< orphan*/  services; int /*<<< orphan*/  extensions; int /*<<< orphan*/  leader; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ j; } ;

/* Variables and functions */
 scalar_t__ COALITION_TYPE_JETSAM ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC2(coalition_t coal, boolean_t privileged)
{
	FUNC0(coal && coal->type == COALITION_TYPE_JETSAM);
	(void)privileged;

	coal->j.leader= TASK_NULL;
	FUNC1(coal->j.extensions);
	FUNC1(coal->j.services);
	FUNC1(coal->j.other);

	return KERN_SUCCESS;
}