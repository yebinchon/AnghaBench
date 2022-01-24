#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_10__ {scalar_t__ limit; int /*<<< orphan*/  state; int /*<<< orphan*/  user_data; int /*<<< orphan*/  priority; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ memorystatus_priority_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ p_memstat_memlimit; int /*<<< orphan*/  task; int /*<<< orphan*/  p_memstat_userdata; int /*<<< orphan*/  p_memstat_effectivepriority; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int memorystatus_list_count ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC9(memorystatus_priority_entry_t **list_ptr, size_t *buffer_size, size_t *list_size, boolean_t size_only) 
{
 	uint32_t list_count, i = 0;
	memorystatus_priority_entry_t *list_entry;
	proc_t p;

 	list_count = memorystatus_list_count;
	*list_size = sizeof(memorystatus_priority_entry_t) * list_count;

	/* Just a size check? */
	if (size_only) {
		return 0;
	}
	
	/* Otherwise, validate the size of the buffer */
	if (*buffer_size < *list_size) {
		return EINVAL;
	}

 	*list_ptr = (memorystatus_priority_entry_t*)FUNC1(*list_size);
	if (!*list_ptr) {
		return ENOMEM;
	}

	FUNC5(*list_ptr, 0, *list_size);

	*buffer_size = *list_size;
	*list_size = 0;

	list_entry = *list_ptr;

	FUNC6();

	p = FUNC3(&i, TRUE);
	while (p && (*list_size < *buffer_size)) {
		list_entry->pid = p->p_pid;
		list_entry->priority = p->p_memstat_effectivepriority;
		list_entry->user_data = p->p_memstat_userdata;

		if (p->p_memstat_memlimit <= 0) {
                        FUNC8(p->task, &list_entry->limit);
                } else {
                        list_entry->limit = p->p_memstat_memlimit;
                }

		list_entry->state = FUNC2(p);
		list_entry++;

		*list_size += sizeof(memorystatus_priority_entry_t);
		
		p = FUNC4(&i, p, TRUE);
	}
	
	FUNC7();
	
	FUNC0(1, "memorystatus_get_priority_list: returning %lu for size\n", (unsigned long)*list_size);
	
	return 0;
}