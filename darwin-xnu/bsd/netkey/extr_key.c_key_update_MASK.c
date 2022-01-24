#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct socket {int dummy; } ;
struct secasvar {scalar_t__ spi; int flags; TYPE_3__* sah; struct socket* so; scalar_t__ flags2; int /*<<< orphan*/  pid; } ;
struct secasindex {int dummy; } ;
struct secashead {int dummy; } ;
struct sadb_x_sa2 {scalar_t__ sadb_x_sa2_flags; scalar_t__ sadb_x_sa2_reqid; int /*<<< orphan*/  sadb_x_sa2_mode; } ;
struct sadb_sa {scalar_t__ sadb_sa_spi; } ;
struct sadb_msghdr {int* extlen; TYPE_4__* msg; int /*<<< orphan*/ ** ext; } ;
struct sadb_address {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  TYPE_5__* ifnet_t ;
struct TYPE_11__ {int /*<<< orphan*/  if_index; } ;
struct TYPE_10__ {scalar_t__ sadb_msg_satype; int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_8__ {scalar_t__ proto; scalar_t__ mode; TYPE_1__ src; } ;
struct TYPE_9__ {TYPE_2__ saidx; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  IPSEC_MODE_ANY ; 
 scalar_t__ IPSEC_MODE_TRANSPORT ; 
 int /*<<< orphan*/  KEY_SADB_LOCKED ; 
 int /*<<< orphan*/  KEY_SENDUP_ALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,struct sadb_address*,struct sadb_address*,int /*<<< orphan*/ ,struct secasindex*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 size_t SADB_EXT_ADDRESS_DST ; 
 size_t SADB_EXT_ADDRESS_SRC ; 
 size_t SADB_EXT_KEY_AUTH ; 
 size_t SADB_EXT_KEY_ENCRYPT ; 
 size_t SADB_EXT_LIFETIME_HARD ; 
 size_t SADB_EXT_LIFETIME_SOFT ; 
 size_t SADB_EXT_SA ; 
 scalar_t__ SADB_SATYPE_AH ; 
 scalar_t__ SADB_SATYPE_ESP ; 
 int /*<<< orphan*/  SADB_X_EXT_IPSECIF ; 
 int SADB_X_EXT_NATT_MULTIPLEUSERS ; 
 size_t SADB_X_EXT_SA2 ; 
 scalar_t__ SADB_X_EXT_SA2_DELETE_ON_DETACH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct secasvar*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (struct sadb_msghdr const*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC5 (struct mbuf*,struct sadb_msghdr const*) ; 
 struct secashead* FUNC6 (struct secasindex*) ; 
 struct secasvar* FUNC7 (struct secashead*,int /*<<< orphan*/ ) ; 
 struct secasvar* FUNC8 (struct secashead*,scalar_t__) ; 
 int FUNC9 (struct secasvar*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (struct socket*,struct mbuf*,int) ; 
 int FUNC12 (struct socket*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct secashead*,struct mbuf*,struct sadb_msghdr const*) ; 
 int FUNC14 (struct secasvar*,struct mbuf*,struct sadb_msghdr const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mbuf*) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 

__attribute__((used)) static int
FUNC20(
		   struct socket *so,
		   struct mbuf *m,
		   const struct sadb_msghdr *mhp)
{
	struct sadb_sa *sa0;
	struct sadb_address *src0, *dst0;
	ifnet_t ipsec_if = NULL;
	struct secasindex saidx;
	struct secashead *sah;
	struct secasvar *sav;
	u_int16_t proto;
	u_int8_t mode;
	u_int32_t reqid;
	u_int16_t flags2;
	int error;
	
	FUNC1(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);
	
	/* sanity check */
	if (so == NULL || m == NULL || mhp == NULL || mhp->msg == NULL)
		FUNC19("key_update: NULL pointer is passed.\n");
	
	/* map satype to proto */
	if ((proto = FUNC10(mhp->msg->sadb_msg_satype)) == 0) {
		FUNC2((LOG_DEBUG, "key_update: invalid satype is passed.\n"));
		return FUNC11(so, m, EINVAL);
	}
	
	if (mhp->ext[SADB_EXT_SA] == NULL ||
	    mhp->ext[SADB_EXT_ADDRESS_SRC] == NULL ||
	    mhp->ext[SADB_EXT_ADDRESS_DST] == NULL ||
	    (mhp->msg->sadb_msg_satype == SADB_SATYPE_ESP &&
	     mhp->ext[SADB_EXT_KEY_ENCRYPT] == NULL) ||
	    (mhp->msg->sadb_msg_satype == SADB_SATYPE_AH &&
	     mhp->ext[SADB_EXT_KEY_AUTH] == NULL) ||
	    (mhp->ext[SADB_EXT_LIFETIME_HARD] != NULL &&
	     mhp->ext[SADB_EXT_LIFETIME_SOFT] == NULL) ||
	    (mhp->ext[SADB_EXT_LIFETIME_HARD] == NULL &&
	     mhp->ext[SADB_EXT_LIFETIME_SOFT] != NULL)) {
			FUNC2((LOG_DEBUG, "key_update: invalid message is passed.\n"));
			return FUNC11(so, m, EINVAL);
		}
	if (mhp->extlen[SADB_EXT_SA] < sizeof(struct sadb_sa) ||
	    mhp->extlen[SADB_EXT_ADDRESS_SRC] < sizeof(struct sadb_address) ||
	    mhp->extlen[SADB_EXT_ADDRESS_DST] < sizeof(struct sadb_address)) {
		FUNC2((LOG_DEBUG, "key_update: invalid message is passed.\n"));
		return FUNC11(so, m, EINVAL);
	}
	if (mhp->ext[SADB_X_EXT_SA2] != NULL) {
		mode = ((struct sadb_x_sa2 *)
				(void *)mhp->ext[SADB_X_EXT_SA2])->sadb_x_sa2_mode;
		reqid = ((struct sadb_x_sa2 *)
				 (void *)mhp->ext[SADB_X_EXT_SA2])->sadb_x_sa2_reqid;
		flags2 = ((struct sadb_x_sa2 *)(void *)mhp->ext[SADB_X_EXT_SA2])->sadb_x_sa2_flags;
	} else {
		mode = IPSEC_MODE_ANY;
		reqid = 0;
		flags2 = 0;
	}
	/* XXX boundary checking for other extensions */
	
	sa0 = (struct sadb_sa *)(void *)mhp->ext[SADB_EXT_SA];
	src0 = (struct sadb_address *)(mhp->ext[SADB_EXT_ADDRESS_SRC]);
	dst0 = (struct sadb_address *)(mhp->ext[SADB_EXT_ADDRESS_DST]);
	ipsec_if = FUNC4(mhp, SADB_X_EXT_IPSECIF);
	
	/* XXX boundary check against sa_len */
	FUNC0(proto, mode, reqid, src0 + 1, dst0 + 1, ipsec_if ? ipsec_if->if_index : 0, &saidx);
	
	FUNC15(sadb_mutex);
	
	/* get a SA header */
	if ((sah = FUNC6(&saidx)) == NULL) {
		FUNC16(sadb_mutex);
		FUNC2((LOG_DEBUG, "key_update: no SA index found.\n"));
		return FUNC11(so, m, ENOENT);
	}
	
	/* set spidx if there */
	/* XXX rewrite */
	error = FUNC13(sah, m, mhp);
	if (error) {
		FUNC16(sadb_mutex);
		return FUNC11(so, m, error);
	}
	
	/* find a SA with sequence number. */
#if IPSEC_DOSEQCHECK
	if (mhp->msg->sadb_msg_seq != 0
		&& (sav = key_getsavbyseq(sah, mhp->msg->sadb_msg_seq)) == NULL) {
	 	lck_mtx_unlock(sadb_mutex);
		ipseclog((LOG_DEBUG,
				  "key_update: no larval SA with sequence %u exists.\n",
				  mhp->msg->sadb_msg_seq));
		return key_senderror(so, m, ENOENT);
	}
#else
	if ((sav = FUNC8(sah, sa0->sadb_sa_spi)) == NULL) {
		FUNC16(sadb_mutex);
		FUNC2((LOG_DEBUG,
				  "key_update: no such a SA found (spi:%u)\n",
				  (u_int32_t)FUNC18(sa0->sadb_sa_spi)));
		return FUNC11(so, m, EINVAL);
	}
#endif
	
	/* validity check */
	if (sav->sah->saidx.proto != proto) {
		FUNC16(sadb_mutex);
		FUNC2((LOG_DEBUG,
				  "key_update: protocol mismatched (DB=%u param=%u)\n",
				  sav->sah->saidx.proto, proto));
		return FUNC11(so, m, EINVAL);
	}
#if IPSEC_DOSEQCHECK
	if (sav->spi != sa0->sadb_sa_spi) {
		lck_mtx_unlock(sadb_mutex);
		ipseclog((LOG_DEBUG,
				  "key_update: SPI mismatched (DB:%u param:%u)\n",
				  (u_int32_t)ntohl(sav->spi),
				  (u_int32_t)ntohl(sa0->sadb_sa_spi)));
		return key_senderror(so, m, EINVAL);
	}
#endif
	if (sav->pid != mhp->msg->sadb_msg_pid) {
		FUNC16(sadb_mutex);
		FUNC2((LOG_DEBUG,
				  "key_update: pid mismatched (DB:%u param:%u)\n",
				  sav->pid, mhp->msg->sadb_msg_pid));
		return FUNC11(so, m, EINVAL);
	}
	
	/* copy sav values */
	error = FUNC14(sav, m, mhp);
	if (error) {
		FUNC3(sav, KEY_SADB_LOCKED);
		FUNC16(sadb_mutex);
		return FUNC11(so, m, error);
	}

	sav->flags2 = flags2;
	if (flags2 & SADB_X_EXT_SA2_DELETE_ON_DETACH) {
		sav->so = so;
	}

	/*
	 * Verify if SADB_X_EXT_NATT_MULTIPLEUSERS flag is set that
	 * this SA is for transport mode - otherwise clear it.
	 */
	if ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0 &&
		(sav->sah->saidx.mode != IPSEC_MODE_TRANSPORT ||
		 sav->sah->saidx.src.ss_family != AF_INET))
		sav->flags &= ~SADB_X_EXT_NATT_MULTIPLEUSERS;
	
	/* check SA values to be mature. */
	if ((error = FUNC9(sav)) != 0) {
		FUNC3(sav, KEY_SADB_LOCKED);
		FUNC16(sadb_mutex);
		return FUNC11(so, m, error);
	}
	
	FUNC16(sadb_mutex);
	
    {
		struct mbuf *n;
		
		/* set msg buf from mhp */
		n = FUNC5(m, mhp);
		if (n == NULL) {
			FUNC2((LOG_DEBUG, "key_update: No more memory.\n"));
			return FUNC11(so, m, ENOBUFS);
		}
		
		FUNC17(m);
		return FUNC12(so, n, KEY_SENDUP_ALL);
    }
}