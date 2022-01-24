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
struct tty {int /*<<< orphan*/  t_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct tty*) ; 

int
FUNC4(int c, struct tty *tp)
{
	FUNC1(tp);	/* debug assert */

	if (!FUNC0(tp->t_state, TS_CONNECTED)) {
		return (-1);
	}
	if (c == '\n')
		(void)FUNC3('\r', tp);
	(void)FUNC3(c, tp);
	FUNC2(tp);
	return (0);
}