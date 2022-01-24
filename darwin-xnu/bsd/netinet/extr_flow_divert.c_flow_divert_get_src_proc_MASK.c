#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_flags; scalar_t__ e_pid; int /*<<< orphan*/  e_uuid; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_8__ {scalar_t__ p_pid; int /*<<< orphan*/  p_uuid; } ;

/* Variables and functions */
 TYPE_1__* PROC_NULL ; 
 int SOF_DELEGATED ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct socket *so, proc_t *proc)
{
	int release = 0;

	if (so->so_flags & SOF_DELEGATED) {
		if ((*proc)->p_pid != so->e_pid) {
			*proc = FUNC2(so->e_pid);
			release = 1;
		} else if (FUNC4((*proc)->p_uuid, so->e_uuid)) {
			*proc = FUNC1(so->e_uuid);
			release = 1;
		}
	} else if (*proc == PROC_NULL) {
		*proc = FUNC0();
	}

	if (*proc != PROC_NULL) {
		if ((*proc)->p_pid == 0) {
			if (release) {
				FUNC3(*proc);
			}
			release = 0;
			*proc = PROC_NULL;
		}
	}

	return release;
}