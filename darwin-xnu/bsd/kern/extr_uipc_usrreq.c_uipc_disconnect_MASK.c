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
struct unpcb {int dummy; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct unpcb* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so)
{
	struct unpcb *unp = FUNC0(so);

	if (unp == 0)
		return (EINVAL);
	FUNC1(unp);
	return (0);
}