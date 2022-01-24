#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msgbuf {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int sc_state; int sc_pgid; int /*<<< orphan*/  sc_selp; struct msgbuf* sc_mbp; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int LOG_ASYNC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int LOG_RDWAIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_open ; 
 TYPE_1__ logsoftc ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct msgbuf *mbp)
{
	/* cf. r24974766 & r25201228*/
	if (FUNC3() == FALSE) {
		return;
	}

	FUNC0();	
	if (!log_open) {
		FUNC1();
		return;
	}
	if (NULL == mbp)
		mbp = logsoftc.sc_mbp;
	if (mbp != logsoftc.sc_mbp)
		goto out;
	FUNC5(&logsoftc.sc_selp);
	if (logsoftc.sc_state & LOG_ASYNC) {
		int pgid = logsoftc.sc_pgid;
		FUNC1();
		if (pgid < 0)
			FUNC2(-pgid, SIGIO); 
		else 
			FUNC4(pgid, SIGIO);
		FUNC0();
	}
	if (logsoftc.sc_state & LOG_RDWAIT) {
		FUNC6((caddr_t)mbp);
		logsoftc.sc_state &= ~LOG_RDWAIT;
	}
out:
	FUNC1();
}