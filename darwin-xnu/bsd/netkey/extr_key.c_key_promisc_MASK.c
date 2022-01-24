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
struct socket {int dummy; } ;
struct sadb_msghdr {TYPE_1__* msg; } ;
struct sadb_msg {int dummy; } ;
struct mbuf {int dummy; } ;
struct keycb {int kp_promisc; } ;
struct TYPE_2__ {int sadb_msg_satype; scalar_t__ sadb_msg_errno; int /*<<< orphan*/  sadb_msg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KEY_SENDUP_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int) ; 
 scalar_t__ FUNC9 (struct socket*) ; 

__attribute__((used)) static int
FUNC10(
			struct socket *so,
			struct mbuf *m,
			const struct sadb_msghdr *mhp)
{
	int olen;
	
	/* sanity check */
	if (so == NULL || m == NULL || mhp == NULL || mhp->msg == NULL)
		FUNC6("key_promisc: NULL pointer is passed.\n");
	
	olen = FUNC1(mhp->msg->sadb_msg_len);
	
	if (olen < sizeof(struct sadb_msg)) {
#if 1
		return FUNC2(so, m, EINVAL);
#else
		m_freem(m);
		return 0;
#endif
	} else if (olen == sizeof(struct sadb_msg)) {
		/* enable/disable promisc mode */
		struct keycb *kp;
		
		FUNC7(so, 1);
		if ((kp = (struct keycb *)FUNC9(so)) == NULL)
			return FUNC2(so, m, EINVAL);
		mhp->msg->sadb_msg_errno = 0;
		switch (mhp->msg->sadb_msg_satype) {
			case 0:
			case 1:
				kp->kp_promisc = mhp->msg->sadb_msg_satype;
				break;
			default:
				FUNC8(so, 1);
				return FUNC2(so, m, EINVAL);
		}
		FUNC8(so, 1);
		
		/* send the original message back to everyone */
		mhp->msg->sadb_msg_errno = 0;
		return FUNC3(so, m, KEY_SENDUP_ALL);
	} else {
		/* send packet as is */
		
		FUNC4(m, FUNC0(sizeof(struct sadb_msg)));
		
		/* TODO: if sadb_msg_seq is specified, send to specific pid */
		return FUNC3(so, m, KEY_SENDUP_ALL);
	}
}