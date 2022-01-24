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
struct knote {TYPE_2__* kn_fp; } ;
struct TYPE_4__ {TYPE_1__* f_fglob; } ;
struct TYPE_3__ {scalar_t__ fg_data; } ;

/* Variables and functions */
 long SO_FILT_HINT_EV ; 
 long SO_FILT_HINT_LOCKED ; 
 int FUNC0 (struct knote*,struct socket*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, long hint)
{
	int ret = 0, locked = 0;
	struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
	long ev_hint = (hint & SO_FILT_HINT_EV);

	if ((hint & SO_FILT_HINT_LOCKED) == 0) {
		FUNC1(so, 1);
		locked = 1;
	}

	ret = FUNC0(kn, so, ev_hint);

	if (locked)
		FUNC2(so, 1);

	return ret;
}