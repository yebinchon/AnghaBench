
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int16_t ;
typedef int u_char ;
struct tcphdr {int th_off; int th_sum; } ;
struct pfi_kif {int dummy; } ;
struct pf_rule {scalar_t__ log; int max_mss; } ;
struct pf_pdesc {TYPE_1__* mp; int af; } ;
typedef int sa_family_t ;
struct TYPE_7__ {int* pb_csum_flags; int pb_ifp; } ;
typedef TYPE_1__ pbuf_t ;


 int AF_INET ;
 int CSUM_TCP ;
 int MAX_TCPOPTLEN ;
 int PFLOG_PACKET (struct pfi_kif*,int ,TYPE_1__*,int ,int,int ,struct pf_rule*,int ,int ,struct pf_pdesc*) ;
 int PFRES_MEMORY ;
 int PF_DROP ;
 int PF_PASS ;
 int REASON_SET (int *,int ) ;
 int TCPOPT_EOL ;

 int TCPOPT_NOP ;
 int VERIFY (int) ;
 int h ;
 int htons (int ) ;
 int ntohs (int ) ;
 int pbuf_copy_back (TYPE_1__*,int,int,int*) ;
 int pf_cksum_fixup (int ,int ,int ,int ) ;
 int * pf_lazy_makewritable (struct pf_pdesc*,TYPE_1__*,int) ;
 int pf_pull_hdr (TYPE_1__*,int,int*,int,int *,int *,int ) ;

__attribute__((used)) static int
pf_normalize_tcpopt(struct pf_rule *r, int dir, struct pfi_kif *kif,
    struct pf_pdesc *pd, pbuf_t *pbuf, struct tcphdr *th, int off,
    int *rewrptr)
{
#pragma unused(dir, kif)
 sa_family_t af = pd->af;
 u_int16_t *mss;
 int thoff;
 int opt, cnt, optlen = 0;
 int rewrite = 0;
 u_char opts[MAX_TCPOPTLEN];
 u_char *optp = opts;

 thoff = th->th_off << 2;
 cnt = thoff - sizeof (struct tcphdr);

 if (cnt > 0 && !pf_pull_hdr(pbuf, off + sizeof (*th), opts, cnt,
     ((void*)0), ((void*)0), af))
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
  case 128:
   mss = (u_int16_t *)(void *)(optp + 2);
   if ((ntohs(*mss)) > r->max_mss) {





    if (pbuf->pb_ifp ||
        !(*pbuf->pb_csum_flags & CSUM_TCP))
     th->th_sum = pf_cksum_fixup(th->th_sum,
         *mss, htons(r->max_mss), 0);
    *mss = htons(r->max_mss);
    rewrite = 1;
   }
   break;
  default:
   break;
  }
 }

 if (rewrite) {
  u_short reason;

  VERIFY(pbuf == pd->mp);

  if (pf_lazy_makewritable(pd, pd->mp,
      off + sizeof (*th) + thoff) == ((void*)0)) {
   REASON_SET(&reason, PFRES_MEMORY);
   if (r->log)
    PFLOG_PACKET(kif, h, pbuf, AF_INET, dir, reason,
        r, 0, 0, pd);
   return PF_DROP;
  }

  *rewrptr = 1;
  pbuf_copy_back(pd->mp, off + sizeof (*th), thoff - sizeof (*th), opts);
 }

 return PF_PASS;
}
