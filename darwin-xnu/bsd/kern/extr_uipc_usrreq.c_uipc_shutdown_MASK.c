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
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 struct unpcb* FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 

__attribute__((used)) static int
FUNC3(struct socket *so)
{
	struct unpcb *unp = FUNC1(so);

	if (unp == 0)
		return (EINVAL);
	FUNC0(so);
	FUNC2(unp);
	return (0);
}