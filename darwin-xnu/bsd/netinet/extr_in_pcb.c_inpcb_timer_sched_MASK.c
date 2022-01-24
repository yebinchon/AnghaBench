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
typedef  int u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  intimer_lazy; int /*<<< orphan*/  intimer_fast; int /*<<< orphan*/  intimer_nodelay; } ;
struct inpcbinfo {TYPE_1__ ipi_timer_req; } ;

/* Variables and functions */
#define  INPCB_TIMER_FAST 129 
#define  INPCB_TIMER_NODELAY 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  inpcb_ticking ; 
 int /*<<< orphan*/  inpcb_timeout_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct inpcbinfo *ipi, u_int32_t type)
{

	FUNC3(&inpcb_timeout_lock);
	inpcb_ticking = TRUE;
	switch (type) {
	case INPCB_TIMER_NODELAY:
		FUNC0(&ipi->ipi_timer_req.intimer_nodelay, 1);
		FUNC2();
		break;
	case INPCB_TIMER_FAST:
		FUNC0(&ipi->ipi_timer_req.intimer_fast, 1);
		FUNC2();
		break;
	default:
		FUNC0(&ipi->ipi_timer_req.intimer_lazy, 1);
		FUNC1();
		break;
	}
	FUNC4(&inpcb_timeout_lock);
}