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
typedef  int /*<<< orphan*/  u_int64_t ;
struct mptses {struct mptcb* mpte_mptcb; } ;
struct mptcb {scalar_t__ mpt_snduna; scalar_t__ mpt_sndnxt; scalar_t__ mpt_local_idsn; scalar_t__ mpt_sndmax; int /*<<< orphan*/  mpt_localtoken; int /*<<< orphan*/  mpt_localkey; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int SHA1_RESULTLEN ; 
 int /*<<< orphan*/  FUNC0 (struct mptcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct mptses *mpte)
{
	struct mptcb *mp_tp = mpte->mpte_mptcb;
	char key_digest[SHA1_RESULTLEN];

	FUNC4(&mp_tp->mpt_localkey, sizeof(mp_tp->mpt_localkey));
	FUNC1(&mp_tp->mpt_localkey, key_digest);

	FUNC3(key_digest, SHA1_RESULTLEN,
	    (caddr_t)&mp_tp->mpt_localtoken, sizeof (mp_tp->mpt_localtoken));
	FUNC2(key_digest, SHA1_RESULTLEN,
	    (caddr_t)&mp_tp->mpt_local_idsn, sizeof (u_int64_t));

	/* The subflow SYN is also first MPTCP byte */
	mp_tp->mpt_snduna = mp_tp->mpt_sndmax = mp_tp->mpt_local_idsn + 1;
	mp_tp->mpt_sndnxt = mp_tp->mpt_snduna;

	FUNC0(mp_tp);
}