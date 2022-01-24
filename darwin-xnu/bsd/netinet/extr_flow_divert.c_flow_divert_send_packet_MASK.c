#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct flow_divert_pcb {TYPE_1__* group; TYPE_2__* so; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
struct TYPE_4__ {int so_error; } ;
struct TYPE_3__ {int /*<<< orphan*/  lck; int /*<<< orphan*/  atomic_bits; int /*<<< orphan*/  send_queue; int /*<<< orphan*/  ctl_unit; } ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_DATA_EOR ; 
 int ECONNABORTED ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GROUP_BIT_CTL_ENQUEUE_BLOCKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  g_flow_divert_kctl_ref ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct flow_divert_pcb *fd_cb, mbuf_t packet, Boolean enqueue)
{
	int		error;

	if (fd_cb->group == NULL) {
		fd_cb->so->so_error = ECONNABORTED;
		FUNC4(fd_cb->so);
		return ECONNABORTED;
	}

	FUNC7(&fd_cb->group->lck);

	if (FUNC0(&fd_cb->group->send_queue)) {
		error = FUNC3(g_flow_divert_kctl_ref, fd_cb->group->ctl_unit, packet, CTL_DATA_EOR);
	} else {
		error = ENOBUFS;
	}

	if (error == ENOBUFS) {
		if (enqueue) {
			if (!FUNC8(&fd_cb->group->lck)) {
				FUNC6(&fd_cb->group->lck);
			}
			FUNC1(&fd_cb->group->send_queue, packet);
			error = 0;
		}
		FUNC2(GROUP_BIT_CTL_ENQUEUE_BLOCKED, &fd_cb->group->atomic_bits);
	}

	FUNC5(&fd_cb->group->lck);

	return error;
}