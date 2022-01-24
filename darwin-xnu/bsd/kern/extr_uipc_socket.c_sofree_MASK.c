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
struct socket {TYPE_2__* so_proto; } ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; int /*<<< orphan*/ * (* pr_getlock ) (struct socket*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/ * dom_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct socket *so)
{
	lck_mtx_t *mutex_held;

	if (so->so_proto->pr_getlock != NULL)
		mutex_held = (*so->so_proto->pr_getlock)(so, 0);
	else
		mutex_held = so->so_proto->pr_domain->dom_mtx;
	FUNC0(mutex_held, LCK_MTX_ASSERT_OWNED);

	FUNC1(so, 0);
}