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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ u_char ;
struct tcpcb {scalar_t__ tcp_cc_index; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* switch_to ) (struct tcpcb*,scalar_t__) ;int /*<<< orphan*/  (* cleanup ) (struct tcpcb*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  TCP_CC_CHANGE_ALGO ; 
 struct tcpcb* FUNC1 (struct inpcb*) ; 
 struct inpcb* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct socket *so, uint16_t cc_index)
{
	struct inpcb *inp = FUNC2(so);
	struct tcpcb *tp = FUNC1(inp);
	u_char old_cc_index = 0;
	if (tp->tcp_cc_index != cc_index) {

		old_cc_index = tp->tcp_cc_index;

		if (FUNC0(tp)->cleanup != NULL)
			FUNC0(tp)->cleanup(tp);
		tp->tcp_cc_index = cc_index;

		FUNC5(tp);

		if (FUNC0(tp)->switch_to != NULL)
			FUNC0(tp)->switch_to(tp, old_cc_index);

		FUNC6(tp, NULL, TCP_CC_CHANGE_ALGO);
	}
}