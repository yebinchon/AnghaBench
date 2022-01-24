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
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct kctl {int (* send ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int) ;int /*<<< orphan*/  kctlref; } ;
struct TYPE_3__ {int /*<<< orphan*/  sc_unit; } ;
struct ctl_cb {int /*<<< orphan*/  userdata; TYPE_1__ sac; struct kctl* kctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  kcs_send_fail; } ;
typedef  int /*<<< orphan*/  SInt64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ kctlstat ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int) ; 

__attribute__((used)) static int
FUNC7(struct socket *so, int flags, struct mbuf *m,
	struct sockaddr *addr, struct mbuf *control,
	struct proc *p)
{
#pragma unused(addr, p)
	int		error = 0;
	struct ctl_cb 	*kcb = (struct ctl_cb *)so->so_pcb;
	struct kctl	*kctl;

	if (control)
		FUNC1(control);

	if (kcb == NULL)	/* sanity check */
		error = ENOTCONN;

	if (error == 0 && (kctl = kcb->kctl) == NULL)
		error = EINVAL;

	if (error == 0 && kctl->send) {
		FUNC3(m, so, FUNC2(m));
		FUNC5(so, 0);
		error = (*kctl->send)(kctl->kctlref, kcb->sac.sc_unit, kcb->userdata,
		    m, flags);
		FUNC4(so, 0);
	} else {
		FUNC1(m);
		if (error == 0)
			error = ENOTSUP;
	}
	if (error != 0)
		FUNC0((SInt64 *)&kctlstat.kcs_send_fail);
	return (error);
}