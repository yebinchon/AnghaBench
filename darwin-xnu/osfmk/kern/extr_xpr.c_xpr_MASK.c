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
struct xprbuf {char const* msg; long arg1; long arg2; long arg3; long arg4; long arg5; int /*<<< orphan*/  cpuinfo; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  XPR_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct xprbuf* xprbase ; 
 int /*<<< orphan*/  xprenable ; 
 struct xprbuf* xprlast ; 
 int /*<<< orphan*/  xprlock ; 
 struct xprbuf* xprptr ; 

void
FUNC7(
	const char	*msg,
	long		arg1,
	long		arg2,
	long		arg3,
	long		arg4,
	long		arg5)
{
	spl_t s;
	struct xprbuf *x;

	/* If we aren't initialized, ignore trace request */
	if (!xprenable || (xprptr == 0))
		return;
	/* Guard against all interrupts and allocate next buffer. */

	s = FUNC5();
	FUNC3(&xprlock);
	x = xprptr++;
	if (xprptr >= xprlast) {
		/* wrap around */
		xprptr = xprbase;
	}
	/* Save xprptr in allocated memory. */
	*(struct xprbuf **)xprlast = xprptr;
	FUNC4(&xprlock);
	x->timestamp = XPR_TIMESTAMP;
	FUNC6(s);
	x->msg = msg;
	x->arg1 = arg1;
	x->arg2 = arg2;
	x->arg3 = arg3;
	x->arg4 = arg4;
	x->arg5 = arg5;
	FUNC1();
	x->cpuinfo = FUNC0();
	FUNC2();
}