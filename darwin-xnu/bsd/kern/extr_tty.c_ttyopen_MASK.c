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
struct tty {int /*<<< orphan*/  t_winsize; int /*<<< orphan*/  t_state; int /*<<< orphan*/  t_cflag; int /*<<< orphan*/  t_dev; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_CONNECTED ; 
 int /*<<< orphan*/  TS_ISOPEN ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(dev_t device, struct tty *tp)
{
	FUNC2(tp);	/* debug assert */

	tp->t_dev = device;

	if (!FUNC0(tp->t_state, TS_ISOPEN)) {
		FUNC1(tp->t_state, TS_ISOPEN);
		if (FUNC0(tp->t_cflag, CLOCAL)) {
			FUNC1(tp->t_state, TS_CONNECTED); }
		FUNC3(&tp->t_winsize, sizeof(tp->t_winsize));
	}

	return (0);
}