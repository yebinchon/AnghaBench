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
struct TYPE_4__ {scalar_t__ pr_lock; TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_connect2 ) (struct socket*,struct socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int FUNC2 (struct socket*,struct socket*) ; 

int
FUNC3(struct socket *so1, struct socket *so2)
{
	int error;

	FUNC0(so1, 1);
	if (so2->so_proto->pr_lock)
		FUNC0(so2, 1);

	error = (*so1->so_proto->pr_usrreqs->pru_connect2)(so1, so2);

	FUNC1(so1, 1);
	if (so2->so_proto->pr_lock)
		FUNC1(so2, 1);
	return (error);
}