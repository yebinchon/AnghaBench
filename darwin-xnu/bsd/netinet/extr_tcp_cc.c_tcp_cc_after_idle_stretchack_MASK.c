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
struct tcpcb {int t_flagsext; scalar_t__ t_stretchack_delayed; int /*<<< orphan*/  rcv_nostrack_ts; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_STRETCHACK_DISABLE_WIN ; 
 int TF_DISABLE_STRETCHACK ; 
 int /*<<< orphan*/  tcp_now ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct tcpcb *tp)
{
	int32_t tdiff;

	if (!(tp->t_flagsext & TF_DISABLE_STRETCHACK))
		return;

	tdiff = FUNC1(tcp_now, 0, tp->rcv_nostrack_ts, 0);
	if (tdiff < 0)
		tdiff = -tdiff;

	if (tdiff > TCP_STRETCHACK_DISABLE_WIN) {
		tp->t_flagsext &= ~TF_DISABLE_STRETCHACK;
		tp->t_stretchack_delayed = 0;

		FUNC0(tp);
	}
}