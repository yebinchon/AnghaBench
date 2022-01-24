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
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct ctl_cb {int /*<<< orphan*/  userdata; int /*<<< orphan*/  sac; TYPE_1__* kctl; } ;
struct TYPE_2__ {int (* bind ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  kctlref; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct socket*,struct sockaddr*,struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct socket *so, struct sockaddr *nam, struct proc *p)
{
	int error = 0;
	struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

	if (kcb == NULL) {
		FUNC1("ctl_bind so_pcb null\n");
	}

	error = FUNC0(so, nam, p);
	if (error) {
		return (error);
	}

	if (kcb->kctl == NULL) {
		FUNC1("ctl_bind kctl null\n");
	}

	if (kcb->kctl->bind == NULL) {
		return (EINVAL);
	}

	FUNC3(so, 0);
	error = (*kcb->kctl->bind)(kcb->kctl->kctlref, &kcb->sac, &kcb->userdata);
	FUNC2(so, 0);

	return (error);
}