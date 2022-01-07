
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union pf_state_xport {int dummy; } pf_state_xport ;
struct TYPE_15__ {int * port; int op; } ;
union pf_rule_xport {TYPE_7__ range; } ;
struct pfi_kif {int dummy; } ;
struct pf_ruleset {int dummy; } ;
struct pf_addr_wrap {int dummy; } ;
struct pf_rule_addr {union pf_rule_xport xport; int neg; struct pf_addr_wrap addr; } ;
struct TYPE_13__ {TYPE_4__* cur; int * proxy_port; } ;
struct pf_rule {scalar_t__ action; scalar_t__ ifnot; int direction; scalar_t__ proto; scalar_t__ os_fingerprint; int tag; unsigned int rtableid; int * anchor; scalar_t__ match_tag; TYPE_6__* skip; int proto_variant; struct pf_rule_addr src; scalar_t__ af; int kif; int evaluations; struct pf_rule_addr dst; TYPE_5__ rpool; } ;
struct TYPE_9__ {int tcp; } ;
struct pf_pdesc {scalar_t__ proto; int pf_mtag; TYPE_1__ hdr; scalar_t__ af; } ;
struct pf_addr {int dummy; } ;
typedef int pbuf_t ;
struct TYPE_16__ {TYPE_3__* rules; } ;
struct TYPE_14__ {struct pf_rule* ptr; } ;
struct TYPE_12__ {struct pf_addr_wrap addr; } ;
struct TYPE_10__ {int ptr; } ;
struct TYPE_11__ {TYPE_2__ active; } ;


 unsigned int IFSCOPE_NONE ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ PF_BINAT ;
 int PF_IN ;
 scalar_t__ PF_MISMATCHAW (struct pf_addr_wrap*,struct pf_addr*,scalar_t__,int ,struct pfi_kif*) ;
 scalar_t__ PF_NOBINAT ;
 scalar_t__ PF_NONAT ;
 scalar_t__ PF_NONAT64 ;
 scalar_t__ PF_NORDR ;
 int PF_OP_EQ ;
 scalar_t__ PF_OSFP_ANY ;
 int PF_OUT ;
 scalar_t__ PF_RDR ;
 scalar_t__ PF_RTABLEID_IS_VALID (unsigned int) ;
 size_t PF_SKIP_AF ;
 size_t PF_SKIP_DIR ;
 size_t PF_SKIP_DST_ADDR ;
 size_t PF_SKIP_DST_PORT ;
 size_t PF_SKIP_IFP ;
 size_t PF_SKIP_PROTO ;
 size_t PF_SKIP_SRC_PORT ;
 struct pf_rule* TAILQ_FIRST (int ) ;
 struct pf_rule* TAILQ_NEXT (struct pf_rule*,int ) ;
 int entries ;
 int htons (int ) ;
 TYPE_8__ pf_main_ruleset ;
 int pf_match_tag (struct pf_rule*,int ,int*) ;
 int pf_match_xport (scalar_t__,int ,union pf_rule_xport*,union pf_state_xport*) ;
 int pf_osfp_fingerprint (struct pf_pdesc*,int *,int,int ) ;
 int pf_osfp_match (int ,scalar_t__) ;
 int pf_step_into_anchor (int*,struct pf_ruleset**,int,struct pf_rule**,int *,int *) ;
 int pf_step_out_of_anchor (int*,struct pf_ruleset**,int,struct pf_rule**,int *,int *) ;
 scalar_t__ pf_tag_packet (int *,int ,int,unsigned int,int *) ;
 scalar_t__ pfi_kif_match (int ,struct pfi_kif*) ;

__attribute__((used)) static struct pf_rule *
pf_match_translation(struct pf_pdesc *pd, pbuf_t *pbuf, int off,
    int direction, struct pfi_kif *kif, struct pf_addr *saddr,
    union pf_state_xport *sxport, struct pf_addr *daddr,
    union pf_state_xport *dxport, int rs_num)
{
 struct pf_rule *r, *rm = ((void*)0);
 struct pf_ruleset *ruleset = ((void*)0);
 int tag = -1;
 unsigned int rtableid = IFSCOPE_NONE;
 int asd = 0;

 r = TAILQ_FIRST(pf_main_ruleset.rules[rs_num].active.ptr);
 while (r && rm == ((void*)0)) {
  struct pf_rule_addr *src = ((void*)0), *dst = ((void*)0);
  struct pf_addr_wrap *xdst = ((void*)0);
  struct pf_addr_wrap *xsrc = ((void*)0);
  union pf_rule_xport rdrxport;

  if (r->action == PF_BINAT && direction == PF_IN) {
   src = &r->dst;
   if (r->rpool.cur != ((void*)0))
    xdst = &r->rpool.cur->addr;
  } else if (r->action == PF_RDR && direction == PF_OUT) {
   dst = &r->src;
   src = &r->dst;
   if (r->rpool.cur != ((void*)0)) {
    rdrxport.range.op = PF_OP_EQ;
    rdrxport.range.port[0] =
        htons(r->rpool.proxy_port[0]);
    xsrc = &r->rpool.cur->addr;
   }
  } else {
   src = &r->src;
   dst = &r->dst;
  }

  r->evaluations++;
  if (pfi_kif_match(r->kif, kif) == r->ifnot)
   r = r->skip[PF_SKIP_IFP].ptr;
  else if (r->direction && r->direction != direction)
   r = r->skip[PF_SKIP_DIR].ptr;
  else if (r->af && r->af != pd->af)
   r = r->skip[PF_SKIP_AF].ptr;
  else if (r->proto && r->proto != pd->proto)
   r = r->skip[PF_SKIP_PROTO].ptr;
  else if (xsrc && PF_MISMATCHAW(xsrc, saddr, pd->af, 0, ((void*)0)))
   r = TAILQ_NEXT(r, entries);
  else if (!xsrc && PF_MISMATCHAW(&src->addr, saddr, pd->af,
      src->neg, kif))
   r = TAILQ_NEXT(r, entries);
  else if (xsrc && (!rdrxport.range.port[0] ||
      !pf_match_xport(r->proto, r->proto_variant, &rdrxport,
      sxport)))
   r = TAILQ_NEXT(r, entries);
  else if (!xsrc && !pf_match_xport(r->proto,
      r->proto_variant, &src->xport, sxport))
   r = r->skip[src == &r->src ? PF_SKIP_SRC_PORT :
       PF_SKIP_DST_PORT].ptr;
  else if (dst != ((void*)0) &&
      PF_MISMATCHAW(&dst->addr, daddr, pd->af, dst->neg, ((void*)0)))
   r = r->skip[PF_SKIP_DST_ADDR].ptr;
  else if (xdst != ((void*)0) && PF_MISMATCHAW(xdst, daddr, pd->af,
      0, ((void*)0)))
   r = TAILQ_NEXT(r, entries);
  else if (dst && !pf_match_xport(r->proto, r->proto_variant,
      &dst->xport, dxport))
   r = r->skip[PF_SKIP_DST_PORT].ptr;
  else if (r->match_tag && !pf_match_tag(r, pd->pf_mtag, &tag))
   r = TAILQ_NEXT(r, entries);
  else if (r->os_fingerprint != PF_OSFP_ANY && (pd->proto !=
      IPPROTO_TCP || !pf_osfp_match(pf_osfp_fingerprint(pd, pbuf,
      off, pd->hdr.tcp), r->os_fingerprint)))
   r = TAILQ_NEXT(r, entries);
  else {
   if (r->tag)
    tag = r->tag;
   if (PF_RTABLEID_IS_VALID(r->rtableid))
    rtableid = r->rtableid;
   if (r->anchor == ((void*)0)) {
    rm = r;
   } else
    pf_step_into_anchor(&asd, &ruleset, rs_num,
        &r, ((void*)0), ((void*)0));
  }
  if (r == ((void*)0))
   pf_step_out_of_anchor(&asd, &ruleset, rs_num, &r,
       ((void*)0), ((void*)0));
 }
 if (pf_tag_packet(pbuf, pd->pf_mtag, tag, rtableid, ((void*)0)))
  return (((void*)0));
 if (rm != ((void*)0) && (rm->action == PF_NONAT ||
     rm->action == PF_NORDR || rm->action == PF_NOBINAT ||
     rm->action == PF_NONAT64))
  return (((void*)0));
 return (rm);
}
