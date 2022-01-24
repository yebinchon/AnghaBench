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
struct socket {int dummy; } ;
struct knote {int /*<<< orphan*/  kn_sdata; int /*<<< orphan*/  kn_sfflags; TYPE_2__* kn_fp; } ;
struct kevent_internal_s {int /*<<< orphan*/  data; int /*<<< orphan*/  fflags; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;

/* Variables and functions */
 int FUNC0 (struct knote*,struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, struct kevent_internal_s *kev)
{
	struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
	int retval;

	FUNC1(so, 1);

	/* save off the new input fflags and data */
	kn->kn_sfflags = kev->fflags;
	kn->kn_sdata = kev->data;

	/* determine if changes result in fired events */
	retval = FUNC0(kn, so);

	FUNC2(so, 1);

	return retval;
}