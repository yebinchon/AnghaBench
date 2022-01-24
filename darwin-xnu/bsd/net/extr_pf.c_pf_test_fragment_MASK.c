#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct pfi_kif {int dummy; } ;
struct pf_ruleset {int dummy; } ;
struct TYPE_18__ {scalar_t__ op; } ;
struct TYPE_19__ {TYPE_7__ range; } ;
struct TYPE_20__ {TYPE_8__ xport; int /*<<< orphan*/  neg; int /*<<< orphan*/  addr; } ;
struct TYPE_15__ {scalar_t__ op; } ;
struct TYPE_16__ {TYPE_4__ range; } ;
struct TYPE_17__ {TYPE_5__ xport; int /*<<< orphan*/  neg; int /*<<< orphan*/  addr; } ;
struct pf_rule {scalar_t__ ifnot; int direction; scalar_t__ af; scalar_t__ proto; int rule_flag; int tos; scalar_t__ os_fingerprint; int prob; scalar_t__ action; scalar_t__ log; scalar_t__ quick; int /*<<< orphan*/ * anchor; scalar_t__ match_tag; scalar_t__ code; scalar_t__ type; scalar_t__ flagset; TYPE_9__ dst; TYPE_6__ src; TYPE_3__* skip; int /*<<< orphan*/  kif; int /*<<< orphan*/  evaluations; } ;
struct pf_pdesc {scalar_t__ af; scalar_t__ proto; int tos; int sc; int /*<<< orphan*/  pf_mtag; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
typedef  scalar_t__ sa_family_t ;
typedef  int /*<<< orphan*/  pbuf_t ;
struct TYPE_14__ {struct pf_rule* ptr; } ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_13__ {TYPE_1__ active; } ;
struct TYPE_11__ {TYPE_2__* rules; } ;

/* Variables and functions */
 int DSCP_MASK ; 
 scalar_t__ IPPROTO_ICMP ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct pfi_kif*,void*,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,struct pf_rule*,struct pf_rule*,struct pf_ruleset*,struct pf_pdesc*) ; 
 int /*<<< orphan*/  PFRES_MATCH ; 
 int /*<<< orphan*/  PFRES_MEMORY ; 
 int PFRULE_DSCP ; 
 int PFRULE_SC ; 
 int PFRULE_TOS ; 
 int PF_DROP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct pfi_kif*) ; 
 scalar_t__ PF_OSFP_ANY ; 
 scalar_t__ PF_PASS ; 
 size_t PF_RULESET_FILTER ; 
 size_t PF_SKIP_AF ; 
 size_t PF_SKIP_DIR ; 
 size_t PF_SKIP_DST_ADDR ; 
 size_t PF_SKIP_IFP ; 
 size_t PF_SKIP_PROTO ; 
 size_t PF_SKIP_SRC_ADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int SCIDX_MASK ; 
 struct pf_rule* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pf_rule* FUNC5 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  entries ; 
 TYPE_10__ pf_main_ruleset ; 
 int /*<<< orphan*/  FUNC6 (struct pf_rule*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,struct pf_ruleset**,size_t,struct pf_rule**,struct pf_rule**,int*) ; 
 scalar_t__ FUNC8 (int*,struct pf_ruleset**,size_t,struct pf_rule**,struct pf_rule**,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct pfi_kif*) ; 

__attribute__((used)) static int
FUNC11(struct pf_rule **rm, int direction, struct pfi_kif *kif,
    pbuf_t *pbuf, void *h, struct pf_pdesc *pd, struct pf_rule **am,
    struct pf_ruleset **rsm)
{
#pragma unused(h)
	struct pf_rule		*r, *a = NULL;
	struct pf_ruleset	*ruleset = NULL;
	sa_family_t		 af = pd->af;
	u_short			 reason;
	int			 tag = -1;
	int			 asd = 0;
	int			 match = 0;

	r = FUNC4(pf_main_ruleset.rules[PF_RULESET_FILTER].active.ptr);
	while (r != NULL) {
		r->evaluations++;
		if (FUNC10(r->kif, kif) == r->ifnot)
			r = r->skip[PF_SKIP_IFP].ptr;
		else if (r->direction && r->direction != direction)
			r = r->skip[PF_SKIP_DIR].ptr;
		else if (r->af && r->af != af)
			r = r->skip[PF_SKIP_AF].ptr;
		else if (r->proto && r->proto != pd->proto)
			r = r->skip[PF_SKIP_PROTO].ptr;
		else if (FUNC1(&r->src.addr, pd->src, af,
		    r->src.neg, kif))
			r = r->skip[PF_SKIP_SRC_ADDR].ptr;
		else if (FUNC1(&r->dst.addr, pd->dst, af,
		    r->dst.neg, NULL))
			r = r->skip[PF_SKIP_DST_ADDR].ptr;
                else if ((r->rule_flag & PFRULE_TOS) && r->tos &&
		    !(r->tos & pd->tos))
			r = FUNC5(r, entries);
                else if ((r->rule_flag & PFRULE_DSCP) && r->tos &&
		    !(r->tos & (pd->tos & DSCP_MASK)))
			r = FUNC5(r, entries);
                else if ((r->rule_flag & PFRULE_SC) && r->tos &&
		    ((r->tos & SCIDX_MASK) != pd->sc))
			r = FUNC5(r, entries);
		else if (r->os_fingerprint != PF_OSFP_ANY)
			r = FUNC5(r, entries);
		else if (pd->proto == IPPROTO_UDP &&
		    (r->src.xport.range.op || r->dst.xport.range.op))
			r = FUNC5(r, entries);
		else if (pd->proto == IPPROTO_TCP &&
		    (r->src.xport.range.op || r->dst.xport.range.op ||
		    r->flagset))
			r = FUNC5(r, entries);
		else if ((pd->proto == IPPROTO_ICMP ||
		    pd->proto == IPPROTO_ICMPV6) &&
		    (r->type || r->code))
			r = FUNC5(r, entries);
		else if (r->prob && r->prob <= (FUNC3() % (UINT_MAX - 1) + 1))
			r = FUNC5(r, entries);
		else if (r->match_tag && !FUNC6(r, pd->pf_mtag, &tag))
			r = FUNC5(r, entries);
		else {
			if (r->anchor == NULL) {
				match = 1;
				*rm = r;
				*am = a;
				*rsm = ruleset;
				if ((*rm)->quick)
					break;
				r = FUNC5(r, entries);
			} else
				FUNC7(&asd, &ruleset,
				    PF_RULESET_FILTER, &r, &a, &match);
		}
		if (r == NULL && FUNC8(&asd, &ruleset,
		    PF_RULESET_FILTER, &r, &a, &match))
			break;
	}
	r = *rm;
	a = *am;
	ruleset = *rsm;

	FUNC2(&reason, PFRES_MATCH);

	if (r->log)
		FUNC0(kif, h, pbuf, af, direction, reason, r, a, ruleset,
		    pd);

	if (r->action != PF_PASS)
		return (PF_DROP);

	if (FUNC9(pbuf, pd->pf_mtag, tag, -1, NULL)) {
		FUNC2(&reason, PFRES_MEMORY);
		return (PF_DROP);
	}

	return (PF_PASS);
}