#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ so_pcb; } ;
struct kctl {int /*<<< orphan*/  kctlref; int /*<<< orphan*/  (* rcvd ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  sc_unit; } ;
struct ctl_cb {int /*<<< orphan*/  userdata; TYPE_1__ sac; struct kctl* kctl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, int flags)
{
	struct ctl_cb		*kcb = (struct ctl_cb *)so->so_pcb;
	struct kctl			*kctl;

	if ((kctl = kcb->kctl) == NULL) {
		return (EINVAL);
	}

	if (kctl->rcvd) {
		FUNC2(so, 0);
		(*kctl->rcvd)(kctl->kctlref, kcb->sac.sc_unit, kcb->userdata, flags);
		FUNC1(so, 0);
	}

	FUNC0(so);

	return (0);
}