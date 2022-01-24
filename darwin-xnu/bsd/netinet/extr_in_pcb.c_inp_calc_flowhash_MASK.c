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
typedef  scalar_t__ u_int32_t ;
struct inpcb {int inp_vflag; int /*<<< orphan*/  inp_flags2; scalar_t__ inp_flowhash; int /*<<< orphan*/  inp_ip_p; int /*<<< orphan*/  inp_fport; int /*<<< orphan*/  inp_lport; int /*<<< orphan*/  inp_dependfaddr; int /*<<< orphan*/  inp_dependladdr; } ;
struct inp_flowhash_key {scalar_t__ infh_rand2; scalar_t__ infh_rand1; int /*<<< orphan*/  infh_proto; int /*<<< orphan*/  infh_af; int /*<<< orphan*/  infh_fport; int /*<<< orphan*/  infh_lport; int /*<<< orphan*/  infh_faddr; int /*<<< orphan*/  infh_laddr; } ;
typedef  int /*<<< orphan*/  fh ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  INP2_IN_FCTREE ; 
 int INP_IPV6 ; 
 struct inpcb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inpcb*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inp_flowhash_key*,int) ; 
 int /*<<< orphan*/  inp_fc_lck ; 
 int /*<<< orphan*/  inp_fc_tree ; 
 scalar_t__ inp_hash_seed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct inp_flowhash_key*,int,scalar_t__) ; 

u_int32_t
FUNC8(struct inpcb *inp)
{
	struct inp_flowhash_key fh __attribute__((aligned(8)));
	u_int32_t flowhash = 0;
	struct inpcb *tmp_inp = NULL;

	if (inp_hash_seed == 0)
		inp_hash_seed = FUNC2();

	FUNC4(&fh, sizeof (fh));

	FUNC3(&inp->inp_dependladdr, &fh.infh_laddr, sizeof (fh.infh_laddr));
	FUNC3(&inp->inp_dependfaddr, &fh.infh_faddr, sizeof (fh.infh_faddr));

	fh.infh_lport = inp->inp_lport;
	fh.infh_fport = inp->inp_fport;
	fh.infh_af = (inp->inp_vflag & INP_IPV6) ? AF_INET6 : AF_INET;
	fh.infh_proto = inp->inp_ip_p;
	fh.infh_rand1 = FUNC2();
	fh.infh_rand2 = FUNC2();

try_again:
	flowhash = FUNC7(&fh, sizeof (fh), inp_hash_seed);
	if (flowhash == 0) {
		/* try to get a non-zero flowhash */
		inp_hash_seed = FUNC2();
		goto try_again;
	}

	inp->inp_flowhash = flowhash;

	/* Insert the inp into inp_fc_tree */
	FUNC5(&inp_fc_lck);
	tmp_inp = FUNC0(inp_fc_tree, &inp_fc_tree, inp);
	if (tmp_inp != NULL) {
		/*
		 * There is a different inp with the same flowhash.
		 * There can be a collision on flow hash but the
		 * probability is low.  Let's recompute the
		 * flowhash.
		 */
		FUNC6(&inp_fc_lck);
		/* recompute hash seed */
		inp_hash_seed = FUNC2();
		goto try_again;
	}

	FUNC1(inp_fc_tree, &inp_fc_tree, inp);
	inp->inp_flags2 |= INP2_IN_FCTREE;
	FUNC6(&inp_fc_lck);

	return (flowhash);
}