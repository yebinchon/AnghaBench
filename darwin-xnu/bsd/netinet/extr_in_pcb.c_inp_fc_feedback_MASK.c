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
struct socket {int dummy; } ;
struct inpcb {scalar_t__ inp_sndinprog_cnt; int /*<<< orphan*/  inp_flags; struct socket* inp_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  INP_FC_FEEDBACK ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WNT_RELEASE ; 
 scalar_t__ WNT_STOPUSING ; 
 scalar_t__ FUNC3 (struct inpcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 

__attribute__((used)) static void
FUNC8(struct inpcb *inp)
{
	struct socket *so = inp->inp_socket;

	/* we already hold a want_cnt on this inp, socket can't be null */
	FUNC2(so != NULL);
	FUNC6(so, 1);

	if (FUNC3(inp, WNT_RELEASE, 1) == WNT_STOPUSING) {
		FUNC7(so, 1);
		return;
	}

	if (inp->inp_sndinprog_cnt > 0)
		inp->inp_flags |= INP_FC_FEEDBACK;

	/*
	 * Return if the connection is not in flow-controlled state.
	 * This can happen if the connection experienced
	 * loss while it was in flow controlled state
	 */
	if (!FUNC0(inp)) {
		FUNC7(so, 1);
		return;
	}
	FUNC5(inp);

	if (FUNC1(so) == SOCK_STREAM)
		FUNC4(inp);

	FUNC7(so, 1);
}