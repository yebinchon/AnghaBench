#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_9__ {scalar_t__ limit; int /*<<< orphan*/  state; int /*<<< orphan*/  user_data; int /*<<< orphan*/  priority; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ memorystatus_priority_entry_t ;
struct TYPE_8__ {scalar_t__ p_memstat_memlimit; int /*<<< orphan*/  task; int /*<<< orphan*/  p_memstat_userdata; int /*<<< orphan*/  p_memstat_effectivepriority; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(pid_t pid, user_addr_t buffer, size_t buffer_size) {
        int error = 0;
        memorystatus_priority_entry_t mp_entry;

        /* Validate inputs */
        if ((pid == 0) || (buffer == USER_ADDR_NULL) || (buffer_size != sizeof(memorystatus_priority_entry_t))) {
                return EINVAL;
        }

	proc_t p = FUNC3(pid);
        if (!p) {
                return ESRCH;
        }

        FUNC2 (&mp_entry, 0, sizeof(memorystatus_priority_entry_t));

        mp_entry.pid = p->p_pid;
        mp_entry.priority = p->p_memstat_effectivepriority;
        mp_entry.user_data = p->p_memstat_userdata;
        if (p->p_memstat_memlimit <= 0) {
                FUNC5(p->task, &mp_entry.limit);
        } else {
                mp_entry.limit = p->p_memstat_memlimit;
        }
        mp_entry.state = FUNC1(p);

        FUNC4(p);

        error = FUNC0(&mp_entry, buffer, buffer_size);

	return (error);
}