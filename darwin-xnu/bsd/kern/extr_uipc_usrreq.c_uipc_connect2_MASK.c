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
 int FUNC1 (struct socket*,struct socket*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so1, struct socket *so2)
{
	struct unpcb *unp = FUNC0(so1);

	if (unp == 0)
		return (EINVAL);

	return (FUNC1(so1, so2));
}