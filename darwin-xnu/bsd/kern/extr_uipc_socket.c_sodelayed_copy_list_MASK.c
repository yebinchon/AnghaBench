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
typedef  scalar_t__ user_ssize_t ;
typedef  int u_int ;
struct uio {int dummy; } ;
struct socket {int dummy; } ;
struct recv_msg_elem {struct uio* uio; } ;
struct mbuf {int /*<<< orphan*/  m_len; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC3(struct socket *so, struct recv_msg_elem *msgarray,
    u_int uiocnt, struct mbuf **free_list, user_ssize_t *resid)
{
#pragma unused(so)
	int error = 0;
	struct mbuf *ml, *m;
	int i = 0;
	struct uio *auio;

	for (ml = *free_list, i = 0; ml != NULL && i < uiocnt;
	    ml = ml->m_nextpkt, i++) {
		auio = msgarray[i].uio;
		for (m = ml; m != NULL; m = m->m_next) {
			error = FUNC2(FUNC1(m, caddr_t), m->m_len, auio);
			if (error != 0)
				goto out;
		}
	}
out:
	FUNC0(*free_list);

	*free_list = NULL;
	*resid = 0;

	return (error);
}