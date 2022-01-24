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
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_INET6 ; 
 scalar_t__ FUNC0 (struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 struct inpcb* FUNC5 (struct socket*) ; 

__attribute__((used)) static void
FUNC6(struct socket *so)
{
	FUNC4(so);
	if (FUNC1(so) == SOCK_DGRAM) {
		struct inpcb *inp = NULL;

		inp = FUNC5(so);
		if (inp != NULL) {
#if INET6
			if (SOCK_CHECK_DOM(so, PF_INET6))
				in6_pcbdetach(inp);
			else
#endif /* INET6 */
				FUNC3(inp);
		}
	}
}