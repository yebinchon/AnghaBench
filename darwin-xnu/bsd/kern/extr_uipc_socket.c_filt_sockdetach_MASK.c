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
struct socket {int so_flags; int /*<<< orphan*/  so_klist; } ;
struct knote {TYPE_2__* kn_fp; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int SOF_KNOTE ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
	FUNC1(so, 1);

	if ((so->so_flags & SOF_KNOTE) != 0)
		if (FUNC0(&so->so_klist, kn))
			so->so_flags &= ~SOF_KNOTE;
	FUNC2(so, 1);
}