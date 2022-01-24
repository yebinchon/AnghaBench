#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  TYPE_3__* coalition_t ;
struct TYPE_8__ {int /*<<< orphan*/  other; int /*<<< orphan*/  services; int /*<<< orphan*/  extensions; int /*<<< orphan*/  leader; } ;
struct TYPE_7__ {int /*<<< orphan*/  tasks; } ;
struct TYPE_9__ {int type; TYPE_2__ j; TYPE_1__ r; } ;

/* Variables and functions */
#define  COALITION_TYPE_JETSAM 129 
#define  COALITION_TYPE_RESOURCE 128 
 int PAGE_SIZE_64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const,int*) ; 

uint64_t FUNC4(coalition_t coal, int *ntasks)
{
	uint64_t bytes = 0;
	int num_tasks = 0;

	if (ntasks)
		*ntasks = 0;
	if (!coal)
		return bytes;

	FUNC0(coal);

	switch (coal->type) {
	case COALITION_TYPE_RESOURCE:
		bytes += FUNC3(&coal->r.tasks, COALITION_TYPE_RESOURCE, &num_tasks);
		break;
	case COALITION_TYPE_JETSAM:
		if (coal->j.leader) {
			bytes += FUNC2(coal->j.leader);
			num_tasks = 1;
		}
		bytes += FUNC3(&coal->j.extensions, COALITION_TYPE_JETSAM, &num_tasks);
		bytes += FUNC3(&coal->j.services, COALITION_TYPE_JETSAM, &num_tasks);
		bytes += FUNC3(&coal->j.other, COALITION_TYPE_JETSAM, &num_tasks);
		break;
	default:
		break;
	}

	FUNC1(coal);

	if (ntasks)
		*ntasks = num_tasks;

	return bytes / PAGE_SIZE_64;
}