#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int u_char ;
struct tcphdr {int th_off; int /*<<< orphan*/  th_sum; } ;
struct pfi_kif {int dummy; } ;
struct pf_rule {scalar_t__ log; int /*<<< orphan*/  max_mss; } ;
struct pf_pdesc {TYPE_1__* mp; int /*<<< orphan*/  af; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
struct TYPE_7__ {int* pb_csum_flags; int /*<<< orphan*/  pb_ifp; } ;
typedef  TYPE_1__ pbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int CSUM_TCP ; 
 int MAX_TCPOPTLEN ; 
 int /*<<< orphan*/  FUNC0 (struct pfi_kif*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct pf_rule*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pf_pdesc*) ; 
 int /*<<< orphan*/  PFRES_MEMORY ; 
 int PF_DROP ; 
 int PF_PASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TCPOPT_EOL ; 
#define  TCPOPT_MAXSEG 128 
 int TCPOPT_NOP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  h ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct pf_pdesc*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct pf_rule *r, int dir, struct pfi_kif *kif,
    struct pf_pdesc *pd, pbuf_t *pbuf, struct tcphdr *th, int off,
    int *rewrptr)
{
#pragma unused(dir, kif)
	sa_family_t af = pd->af;
	u_int16_t	*mss;
	int		thoff;
	int		opt, cnt, optlen = 0;
	int		rewrite = 0;
	u_char		opts[MAX_TCPOPTLEN];
	u_char		*optp = opts;

	thoff = th->th_off << 2;
	cnt = thoff - sizeof (struct tcphdr);

	if (cnt > 0 && !FUNC8(pbuf, off + sizeof (*th), opts, cnt,
	    NULL, NULL, af))
		return PF_DROP;

	for (; cnt > 0; cnt -= optlen, optp += optlen) {
		opt = optp[0];
		if (opt == TCPOPT_EOL)
			break;
		if (opt == TCPOPT_NOP)
			optlen = 1;
		else {
			if (cnt < 2)
				break;
			optlen = optp[1];
			if (optlen < 2 || optlen > cnt)
				break;
		}
		switch (opt) {
		case TCPOPT_MAXSEG:
			mss = (u_int16_t *)(void *)(optp + 2);
			if ((FUNC4(*mss)) > r->max_mss) {
				/*
				 * <jhw@apple.com>
				 *  Only do the TCP checksum fixup if delayed
				 * checksum calculation will not be performed.
				 */
				if (pbuf->pb_ifp ||
				    !(*pbuf->pb_csum_flags & CSUM_TCP))
					th->th_sum = FUNC6(th->th_sum,
					    *mss, FUNC3(r->max_mss), 0);
				*mss = FUNC3(r->max_mss);
				rewrite = 1;
			}
			break;
		default:
			break;
		}
	}

	if (rewrite) {
		u_short reason;

		FUNC2(pbuf == pd->mp);

		if (FUNC7(pd, pd->mp,
		    off + sizeof (*th) + thoff) == NULL) {
			FUNC1(&reason, PFRES_MEMORY);
			if (r->log)
				FUNC0(kif, h, pbuf, AF_INET, dir, reason,
				    r, 0, 0, pd);
			return PF_DROP;
		}

		*rewrptr = 1;
		FUNC5(pd->mp, off + sizeof (*th), thoff - sizeof (*th), opts);
	}

	return PF_PASS;
}