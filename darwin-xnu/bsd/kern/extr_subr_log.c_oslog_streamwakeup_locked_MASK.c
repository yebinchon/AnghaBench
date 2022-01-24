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
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int sc_state; int /*<<< orphan*/  sc_selp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LOG_RDWAIT ; 
 int /*<<< orphan*/  oslog_stream_lock ; 
 int /*<<< orphan*/  oslog_stream_open ; 
 scalar_t__ oslog_streambufp ; 
 TYPE_1__ oslog_streamsoftc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC0(&oslog_stream_lock, LCK_ASSERT_OWNED);
	if (!oslog_stream_open) {
		return;
	}
	FUNC1(&oslog_streamsoftc.sc_selp);
	if (oslog_streamsoftc.sc_state & LOG_RDWAIT) {
		FUNC2((caddr_t)oslog_streambufp);
		oslog_streamsoftc.sc_state &= ~LOG_RDWAIT;
	}
}