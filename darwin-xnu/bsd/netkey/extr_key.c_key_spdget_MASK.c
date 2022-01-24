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
typedef  int /*<<< orphan*/  u_int32_t ;
struct socket {int dummy; } ;
struct secpolicy {int dummy; } ;
struct sadb_x_policy {int /*<<< orphan*/  sadb_x_policy_id; } ;
struct sadb_msghdr {int* extlen; TYPE_1__* msg; int /*<<< orphan*/ ** ext; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sadb_msg_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  KEY_SENDUP_ONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 size_t SADB_X_EXT_POLICY ; 
 int /*<<< orphan*/  SADB_X_SPDGET ; 
 struct secpolicy* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC5 (struct secpolicy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 

__attribute__((used)) static int
FUNC10(
		   struct socket *so,
		   struct mbuf *m,
		   const struct sadb_msghdr *mhp)
{
	u_int32_t id;
	struct secpolicy *sp;
	struct mbuf *n;
	
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);
	
	/* sanity check */
	if (so == NULL || m == NULL || mhp == NULL || mhp->msg == NULL)
		FUNC9("key_spdget: NULL pointer is passed.\n");
	
	if (mhp->ext[SADB_X_EXT_POLICY] == NULL ||
	    mhp->extlen[SADB_X_EXT_POLICY] < sizeof(struct sadb_x_policy)) {
		FUNC2((LOG_DEBUG, "key_spdget: invalid message is passed.\n"));
		return FUNC3(so, m, EINVAL);
	}
	
	id = ((struct sadb_x_policy *)
		  (void *)mhp->ext[SADB_X_EXT_POLICY])->sadb_x_policy_id;
	
	/* Is there SP in SPD ? */
	FUNC6(sadb_mutex);
	if ((sp = FUNC1(id)) == NULL) {
		FUNC2((LOG_DEBUG, "key_spdget: no SP found id:%u.\n", id));
		FUNC7(sadb_mutex);
		return FUNC3(so, m, ENOENT);
	}
	FUNC7(sadb_mutex);
	n = FUNC5(sp, SADB_X_SPDGET, 0, mhp->msg->sadb_msg_pid);
	if (n != NULL) {
		FUNC8(m);
		return FUNC4(so, n, KEY_SENDUP_ONE);
	} else
		return FUNC3(so, m, ENOBUFS);
}