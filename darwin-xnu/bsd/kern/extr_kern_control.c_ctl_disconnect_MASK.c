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
struct socket {scalar_t__ so_pcb; } ;
struct kctl {int /*<<< orphan*/  kcb_head; int /*<<< orphan*/  kctlref; int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  sc_unit; } ;
struct ctl_cb {scalar_t__ usecount; TYPE_1__ sac; struct kctl* kctl; int /*<<< orphan*/  userdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  kcs_gencnt; int /*<<< orphan*/  kcs_pcbcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ctl_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctl_mtx ; 
 TYPE_2__ kctlstat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct socket *so)
{
	struct ctl_cb 	*kcb = (struct ctl_cb *)so->so_pcb;

	if ((kcb = (struct ctl_cb *)so->so_pcb)) {
		struct kctl		*kctl = kcb->kctl;

		if (kctl && kctl->disconnect) {
			FUNC5(so, 0);
			(*kctl->disconnect)(kctl->kctlref, kcb->sac.sc_unit,
			    kcb->userdata);
			FUNC4(so, 0);
		}

		FUNC6(so);

		FUNC5(so, 0);
		FUNC1(ctl_mtx);
		kcb->kctl = 0;
		kcb->sac.sc_unit = 0;
		while (kcb->usecount != 0) {
			FUNC3(&kcb->usecount, ctl_mtx, 0, "kcb->usecount", 0);
		}
		FUNC0(&kctl->kcb_head, kcb, next);
		kctlstat.kcs_pcbcount--;
		kctlstat.kcs_gencnt++;
		FUNC2(ctl_mtx);
		FUNC4(so, 0);
	}
	return (0);
}