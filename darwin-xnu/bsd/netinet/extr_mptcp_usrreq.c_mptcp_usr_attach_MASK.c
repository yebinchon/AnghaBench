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
struct socket {int so_options; int so_linger; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int SO_LINGER ; 
 int TCP_LINGERTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/ * FUNC1 (struct socket*) ; 
 int FUNC2 (struct socket*,struct proc*) ; 

__attribute__((used)) static int
FUNC3(struct socket *mp_so, int proto, struct proc *p)
{
#pragma unused(proto)
	int error;

	FUNC0(FUNC1(mp_so) == NULL);

	error = FUNC2(mp_so, p);
	if (error != 0)
		goto out;
	/*
	 * XXX: adi@apple.com
	 *
	 * Might want to use a different SO_LINGER timeout than TCP's?
	 */
	if ((mp_so->so_options & SO_LINGER) && mp_so->so_linger == 0)
		mp_so->so_linger = TCP_LINGERTIME * hz;
out:
	return (error);
}