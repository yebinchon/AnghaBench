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
typedef  int /*<<< orphan*/  u_long ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int FUNC0 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

int
FUNC3(struct tty *tp, u_long cmd, caddr_t data, int flag, proc_t p)
{
	int	retval;

	FUNC1(tp);
	retval = FUNC0(tp, cmd, data, flag, p);
	FUNC2(tp);

	return (retval);
}