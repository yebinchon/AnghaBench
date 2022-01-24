#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
union pf_state_xport {int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  u_short ;
typedef  int u_int8_t ;
typedef  scalar_t__ u_int16_t ;
struct tcphdr {int th_flags; int th_off; scalar_t__ th_x2; scalar_t__ th_urp; void* th_sum; int /*<<< orphan*/  th_ack; int /*<<< orphan*/  th_dport; int /*<<< orphan*/  th_sport; } ;
struct pfi_kif {int dummy; } ;
struct pf_ruleset {int dummy; } ;
struct TYPE_14__ {scalar_t__ op; } ;
struct TYPE_17__ {TYPE_5__ range; } ;
struct TYPE_15__ {TYPE_8__ xport; int /*<<< orphan*/  neg; int /*<<< orphan*/  addr; } ;
struct TYPE_13__ {TYPE_8__ xport; int /*<<< orphan*/  neg; int /*<<< orphan*/  addr; } ;
struct pf_rule {scalar_t__ ifnot; int direction; scalar_t__ af; scalar_t__ proto; scalar_t__ os_fingerprint; scalar_t__ action; int rule_flag; scalar_t__ log; scalar_t__ max_mss; int /*<<< orphan*/ * bytes; int /*<<< orphan*/ * packets; int /*<<< orphan*/ * anchor; TYPE_7__* skip; TYPE_6__ dst; int /*<<< orphan*/  proto_variant; TYPE_4__ src; int /*<<< orphan*/  kif; int /*<<< orphan*/  evaluations; } ;
struct TYPE_10__ {struct tcphdr* tcp; } ;
struct pf_pdesc {scalar_t__ af; scalar_t__ proto; int /*<<< orphan*/ * mp; int /*<<< orphan*/  flags; scalar_t__ tot_len; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ hdr; } ;
typedef  scalar_t__ sa_family_t ;
typedef  int /*<<< orphan*/  pbuf_t ;
struct TYPE_18__ {TYPE_3__* rules; } ;
struct TYPE_16__ {struct pf_rule* ptr; } ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_12__ {TYPE_2__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  PFDESC_TCP_NORM ; 
 int /*<<< orphan*/  FUNC0 (struct pfi_kif*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct pf_rule*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pf_pdesc*) ; 
 int /*<<< orphan*/  PFRES_MEMORY ; 
 int /*<<< orphan*/  PFRES_NORM ; 
 int PFRULE_REASSEMBLE_TCP ; 
 int PF_DROP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct pfi_kif*) ; 
 scalar_t__ PF_NOSCRUB ; 
 scalar_t__ PF_OSFP_ANY ; 
 int PF_OUT ; 
 int PF_PASS ; 
 size_t PF_RULESET_SCRUB ; 
 size_t PF_SKIP_AF ; 
 size_t PF_SKIP_DIR ; 
 size_t PF_SKIP_DST_ADDR ; 
 size_t PF_SKIP_DST_PORT ; 
 size_t PF_SKIP_IFP ; 
 size_t PF_SKIP_PROTO ; 
 size_t PF_SKIP_SRC_ADDR ; 
 size_t PF_SKIP_SRC_PORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pf_rule* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pf_rule* FUNC4 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int TH_ACK ; 
 int TH_FIN ; 
 int TH_PUSH ; 
 int TH_RST ; 
 int TH_SYN ; 
 int TH_URG ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,struct tcphdr*) ; 
 void* FUNC6 (void*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct pf_pdesc*,int /*<<< orphan*/ *,int) ; 
 TYPE_9__ pf_main_ruleset ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,TYPE_8__*,union pf_state_xport*) ; 
 int FUNC9 (struct pf_rule*,int,struct pfi_kif*,struct pf_pdesc*,int /*<<< orphan*/ *,struct tcphdr*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pf_pdesc*,int /*<<< orphan*/ *,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int*,struct pf_ruleset**,size_t,struct pf_rule**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int*,struct pf_ruleset**,size_t,struct pf_rule**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct pfi_kif*) ; 

int
FUNC15(int dir, struct pfi_kif *kif, pbuf_t *pbuf, int ipoff,
    int off, void *h, struct pf_pdesc *pd)
{
#pragma unused(ipoff, h)
	struct pf_rule	*r, *rm = NULL;
	struct tcphdr	*th = pd->hdr.tcp;
	int		 rewrite = 0;
	int		 asd = 0;
	u_short		 reason;
	u_int8_t	 flags;
	sa_family_t	 af = pd->af;
	struct pf_ruleset *ruleset = NULL;
	union pf_state_xport sxport, dxport;

	sxport.port = th->th_sport;
	dxport.port = th->th_dport;

	r = FUNC3(pf_main_ruleset.rules[PF_RULESET_SCRUB].active.ptr);
	while (r != NULL) {
		r->evaluations++;
		if (FUNC14(r->kif, kif) == r->ifnot)
			r = r->skip[PF_SKIP_IFP].ptr;
		else if (r->direction && r->direction != dir)
			r = r->skip[PF_SKIP_DIR].ptr;
		else if (r->af && r->af != af)
			r = r->skip[PF_SKIP_AF].ptr;
		else if (r->proto && r->proto != pd->proto)
			r = r->skip[PF_SKIP_PROTO].ptr;
		else if (FUNC1(&r->src.addr, pd->src, af,
		    r->src.neg, kif))
			r = r->skip[PF_SKIP_SRC_ADDR].ptr;
		else if (r->src.xport.range.op &&
		    !FUNC8(r->src.xport.range.op, r->proto_variant,
		    &r->src.xport, &sxport))
			r = r->skip[PF_SKIP_SRC_PORT].ptr;
		else if (FUNC1(&r->dst.addr, pd->dst, af,
		    r->dst.neg, NULL))
			r = r->skip[PF_SKIP_DST_ADDR].ptr;
		else if (r->dst.xport.range.op &&
		    !FUNC8(r->dst.xport.range.op, r->proto_variant,
		    &r->dst.xport, &dxport))
			r = r->skip[PF_SKIP_DST_PORT].ptr;
		else if (r->os_fingerprint != PF_OSFP_ANY &&
		    !FUNC11(FUNC10(pd, pbuf, off, th),
		    r->os_fingerprint))
			r = FUNC4(r, entries);
		else {
			if (r->anchor == NULL) {
				rm = r;
				break;
			} else {
				FUNC12(&asd, &ruleset,
				    PF_RULESET_SCRUB, &r, NULL, NULL);
			}
		}
		if (r == NULL && FUNC13(&asd, &ruleset,
		    PF_RULESET_SCRUB, &r, NULL, NULL))
			break;
	}

	if (rm == NULL || rm->action == PF_NOSCRUB)
		return (PF_PASS);
	else {
		r->packets[dir == PF_OUT]++;
		r->bytes[dir == PF_OUT] += pd->tot_len;
	}

	if (rm->rule_flag & PFRULE_REASSEMBLE_TCP)
		pd->flags |= PFDESC_TCP_NORM;

	flags = th->th_flags;
	if (flags & TH_SYN) {
		/* Illegal packet */
		if (flags & TH_RST)
			goto tcp_drop;

		if (flags & TH_FIN)
			flags &= ~TH_FIN;
	} else {
		/* Illegal packet */
		if (!(flags & (TH_ACK|TH_RST)))
			goto tcp_drop;
	}

	if (!(flags & TH_ACK)) {
		/* These flags are only valid if ACK is set */
		if ((flags & TH_FIN) || (flags & TH_PUSH) || (flags & TH_URG))
			goto tcp_drop;
	}

	/* Check for illegal header length */
	if (th->th_off < (sizeof (struct tcphdr) >> 2))
		goto tcp_drop;

	/* If flags changed, or reserved data set, then adjust */
	if (flags != th->th_flags || th->th_x2 != 0) {
		u_int16_t	ov, nv;

		ov = *(u_int16_t *)(&th->th_ack + 1);
		th->th_flags = flags;
		th->th_x2 = 0;
		nv = *(u_int16_t *)(&th->th_ack + 1);

		th->th_sum = FUNC6(th->th_sum, ov, nv, 0);
		rewrite = 1;
	}

	/* Remove urgent pointer, if TH_URG is not set */
	if (!(flags & TH_URG) && th->th_urp) {
		th->th_sum = FUNC6(th->th_sum, th->th_urp, 0, 0);
		th->th_urp = 0;
		rewrite = 1;
	}

	/* copy back packet headers if we sanitized */
	/* Process options */
	if (r->max_mss) {
		int rv = FUNC9(r, dir, kif, pd, pbuf, th, off,
		    &rewrite);
		if (rv == PF_DROP)
			return rv;
		pbuf = pd->mp;
	}

	if (rewrite) {
		if (FUNC7(pd, pbuf,
		    off + sizeof (*th)) == NULL) {
			FUNC2(&reason, PFRES_MEMORY);
			if (r->log)
				FUNC0(kif, h, pbuf, AF_INET, dir, reason,
				    r, 0, 0, pd);
			return PF_DROP;
		}

		FUNC5(pbuf, off, sizeof (*th), th);
	}

	return (PF_PASS);

tcp_drop:
	FUNC2(&reason, PFRES_NORM);
	if (rm != NULL && r->log)
		FUNC0(kif, h, pbuf, AF_INET, dir, reason, r, NULL, NULL, pd);
	return (PF_DROP);
}