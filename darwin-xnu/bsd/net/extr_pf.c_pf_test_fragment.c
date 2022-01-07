
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u_short ;
struct pfi_kif {int dummy; } ;
struct pf_ruleset {int dummy; } ;
struct TYPE_18__ {scalar_t__ op; } ;
struct TYPE_19__ {TYPE_7__ range; } ;
struct TYPE_20__ {TYPE_8__ xport; int neg; int addr; } ;
struct TYPE_15__ {scalar_t__ op; } ;
struct TYPE_16__ {TYPE_4__ range; } ;
struct TYPE_17__ {TYPE_5__ xport; int neg; int addr; } ;
struct pf_rule {scalar_t__ ifnot; int direction; scalar_t__ af; scalar_t__ proto; int rule_flag; int tos; scalar_t__ os_fingerprint; int prob; scalar_t__ action; scalar_t__ log; scalar_t__ quick; int * anchor; scalar_t__ match_tag; scalar_t__ code; scalar_t__ type; scalar_t__ flagset; TYPE_9__ dst; TYPE_6__ src; TYPE_3__* skip; int kif; int evaluations; } ;
struct pf_pdesc {scalar_t__ af; scalar_t__ proto; int tos; int sc; int pf_mtag; int dst; int src; } ;
typedef scalar_t__ sa_family_t ;
typedef int pbuf_t ;
struct TYPE_14__ {struct pf_rule* ptr; } ;
struct TYPE_12__ {int ptr; } ;
struct TYPE_13__ {TYPE_1__ active; } ;
struct TYPE_11__ {TYPE_2__* rules; } ;


 int DSCP_MASK ;
 scalar_t__ IPPROTO_ICMP ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int PFLOG_PACKET (struct pfi_kif*,void*,int *,scalar_t__,int,int ,struct pf_rule*,struct pf_rule*,struct pf_ruleset*,struct pf_pdesc*) ;
 int PFRES_MATCH ;
 int PFRES_MEMORY ;
 int PFRULE_DSCP ;
 int PFRULE_SC ;
 int PFRULE_TOS ;
 int PF_DROP ;
 scalar_t__ PF_MISMATCHAW (int *,int ,scalar_t__,int ,struct pfi_kif*) ;
 scalar_t__ PF_OSFP_ANY ;
 scalar_t__ PF_PASS ;
 size_t PF_RULESET_FILTER ;
 size_t PF_SKIP_AF ;
 size_t PF_SKIP_DIR ;
 size_t PF_SKIP_DST_ADDR ;
 size_t PF_SKIP_IFP ;
 size_t PF_SKIP_PROTO ;
 size_t PF_SKIP_SRC_ADDR ;
 int REASON_SET (int *,int ) ;
 int RandomULong () ;
 int SCIDX_MASK ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_NEXT (struct pf_rule*,int ) ;
 int UINT_MAX ;
 int entries ;
 TYPE_10__ pf_main_ruleset ;
 int pf_match_tag (struct pf_rule*,int ,int*) ;
 int pf_step_into_anchor (int*,struct pf_ruleset**,size_t,struct pf_rule**,struct pf_rule**,int*) ;
 scalar_t__ pf_step_out_of_anchor (int*,struct pf_ruleset**,size_t,struct pf_rule**,struct pf_rule**,int*) ;
 scalar_t__ pf_tag_packet (int *,int ,int,int,int *) ;
 scalar_t__ pfi_kif_match (int ,struct pfi_kif*) ;

__attribute__((used)) static int
pf_test_fragment(struct pf_rule **rm, int direction, struct pfi_kif *kif,
    pbuf_t *pbuf, void *h, struct pf_pdesc *pd, struct pf_rule **am,
    struct pf_ruleset **rsm)
{
#pragma unused(h)
 struct pf_rule *r, *a = ((void*)0);
 struct pf_ruleset *ruleset = ((void*)0);
 sa_family_t af = pd->af;
 u_short reason;
 int tag = -1;
 int asd = 0;
 int match = 0;

 r = TAILQ_FIRST(pf_main_ruleset.rules[PF_RULESET_FILTER].active.ptr);
 while (r != ((void*)0)) {
  r->evaluations++;
  if (pfi_kif_match(r->kif, kif) == r->ifnot)
   r = r->skip[PF_SKIP_IFP].ptr;
  else if (r->direction && r->direction != direction)
   r = r->skip[PF_SKIP_DIR].ptr;
  else if (r->af && r->af != af)
   r = r->skip[PF_SKIP_AF].ptr;
  else if (r->proto && r->proto != pd->proto)
   r = r->skip[PF_SKIP_PROTO].ptr;
  else if (PF_MISMATCHAW(&r->src.addr, pd->src, af,
      r->src.neg, kif))
   r = r->skip[PF_SKIP_SRC_ADDR].ptr;
  else if (PF_MISMATCHAW(&r->dst.addr, pd->dst, af,
      r->dst.neg, ((void*)0)))
   r = r->skip[PF_SKIP_DST_ADDR].ptr;
                else if ((r->rule_flag & PFRULE_TOS) && r->tos &&
      !(r->tos & pd->tos))
   r = TAILQ_NEXT(r, entries);
                else if ((r->rule_flag & PFRULE_DSCP) && r->tos &&
      !(r->tos & (pd->tos & DSCP_MASK)))
   r = TAILQ_NEXT(r, entries);
                else if ((r->rule_flag & PFRULE_SC) && r->tos &&
      ((r->tos & SCIDX_MASK) != pd->sc))
   r = TAILQ_NEXT(r, entries);
  else if (r->os_fingerprint != PF_OSFP_ANY)
   r = TAILQ_NEXT(r, entries);
  else if (pd->proto == IPPROTO_UDP &&
      (r->src.xport.range.op || r->dst.xport.range.op))
   r = TAILQ_NEXT(r, entries);
  else if (pd->proto == IPPROTO_TCP &&
      (r->src.xport.range.op || r->dst.xport.range.op ||
      r->flagset))
   r = TAILQ_NEXT(r, entries);
  else if ((pd->proto == IPPROTO_ICMP ||
      pd->proto == IPPROTO_ICMPV6) &&
      (r->type || r->code))
   r = TAILQ_NEXT(r, entries);
  else if (r->prob && r->prob <= (RandomULong() % (UINT_MAX - 1) + 1))
   r = TAILQ_NEXT(r, entries);
  else if (r->match_tag && !pf_match_tag(r, pd->pf_mtag, &tag))
   r = TAILQ_NEXT(r, entries);
  else {
   if (r->anchor == ((void*)0)) {
    match = 1;
    *rm = r;
    *am = a;
    *rsm = ruleset;
    if ((*rm)->quick)
     break;
    r = TAILQ_NEXT(r, entries);
   } else
    pf_step_into_anchor(&asd, &ruleset,
        PF_RULESET_FILTER, &r, &a, &match);
  }
  if (r == ((void*)0) && pf_step_out_of_anchor(&asd, &ruleset,
      PF_RULESET_FILTER, &r, &a, &match))
   break;
 }
 r = *rm;
 a = *am;
 ruleset = *rsm;

 REASON_SET(&reason, PFRES_MATCH);

 if (r->log)
  PFLOG_PACKET(kif, h, pbuf, af, direction, reason, r, a, ruleset,
      pd);

 if (r->action != PF_PASS)
  return (PF_DROP);

 if (pf_tag_packet(pbuf, pd->pf_mtag, tag, -1, ((void*)0))) {
  REASON_SET(&reason, PFRES_MEMORY);
  return (PF_DROP);
 }

 return (PF_PASS);
}
