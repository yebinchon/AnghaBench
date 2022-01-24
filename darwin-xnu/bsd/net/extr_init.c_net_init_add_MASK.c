#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct init_list_entry {scalar_t__ next; scalar_t__ func; } ;
typedef  scalar_t__ net_init_func_ptr ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EALREADY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ LIST_RAN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct init_list_entry*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct init_list_entry*,int) ; 
 struct init_list_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct init_list_entry*,int) ; 
 scalar_t__ list_head ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

errno_t
FUNC5(
	net_init_func_ptr init_func)
{
	struct init_list_entry	*entry;
	
	if (init_func == 0) {
		return EINVAL;
	}
	
	/* Check if we've already started */
	if (list_head == LIST_RAN) {
		return EALREADY;
	}
	
	entry = FUNC2(sizeof(*entry));
	if (entry == 0) {
		FUNC4("net_init_add: no memory\n");
		return ENOMEM;
	}
	
	FUNC1(entry, sizeof(*entry));
	entry->func = init_func;
	
	do {
		entry->next = list_head;
		
		if (entry->next == LIST_RAN) {
			/* List already ran, cleanup and call the function */
			FUNC3(entry, sizeof(*entry));
			return EALREADY;
		}
	} while(!FUNC0(entry->next, entry, &list_head));
	
	return 0;
}