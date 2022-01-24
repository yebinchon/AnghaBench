#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 struct inpcb* FUNC1 (struct socket*) ; 

int
FUNC2(struct socket *so)
{
	struct inpcb *inp;

	inp = FUNC1(so);
	if (inp == NULL)
		return (EINVAL);
	FUNC0(so);
	return (0);
}