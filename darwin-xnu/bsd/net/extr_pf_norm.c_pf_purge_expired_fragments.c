
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int32_t ;
struct pf_fragment {scalar_t__ fr_timeout; int fr_af; int fr_id6; int fr_id; } ;
struct TYPE_2__ {scalar_t__* timeout; } ;




 int BUFFER_FRAGMENTS (struct pf_fragment*) ;
 int DPFPRINTF (char*) ;
 size_t PFTM_FRAG ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct pf_fragment* TAILQ_LAST (int *,int ) ;
 int VERIFY (int) ;
 int VM_KERNEL_ADDRPERM (struct pf_fragment*) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pf_cachequeue ;
 TYPE_1__ pf_default_rule ;
 int pf_fragqueue ;
 int pf_free_fragment (struct pf_fragment*) ;
 scalar_t__ pf_time_second () ;

void
pf_purge_expired_fragments(void)
{
 struct pf_fragment *frag;
 u_int32_t expire = pf_time_second() -
     pf_default_rule.timeout[PFTM_FRAG];

 while ((frag = TAILQ_LAST(&pf_fragqueue, pf_fragqueue)) != ((void*)0)) {
  VERIFY(BUFFER_FRAGMENTS(frag));
  if (frag->fr_timeout > expire)
   break;

  switch (frag->fr_af) {
  case 129:
        DPFPRINTF(("expiring IPv4 %d(0x%llx) from queue.\n",
     ntohs(frag->fr_id),
     (uint64_t)VM_KERNEL_ADDRPERM(frag)));
        break;
  case 128:
        DPFPRINTF(("expiring IPv6 %d(0x%llx) from queue.\n",
     ntohl(frag->fr_id6),
     (uint64_t)VM_KERNEL_ADDRPERM(frag)));
        break;
  default:
        VERIFY(0 && "only IPv4 and IPv6 supported");
        break;
  }
  pf_free_fragment(frag);
 }

 while ((frag = TAILQ_LAST(&pf_cachequeue, pf_cachequeue)) != ((void*)0)) {
  VERIFY(!BUFFER_FRAGMENTS(frag));
  if (frag->fr_timeout > expire)
   break;

  switch (frag->fr_af) {
  case 129:
        DPFPRINTF(("expiring IPv4 %d(0x%llx) from cache.\n",
     ntohs(frag->fr_id),
     (uint64_t)VM_KERNEL_ADDRPERM(frag)));
        break;
  case 128:
        DPFPRINTF(("expiring IPv6 %d(0x%llx) from cache.\n",
     ntohl(frag->fr_id6),
     (uint64_t)VM_KERNEL_ADDRPERM(frag)));
        break;
  default:
        VERIFY(0 && "only IPv4 and IPv6 supported");
        break;
  }
  pf_free_fragment(frag);
  VERIFY(TAILQ_EMPTY(&pf_cachequeue) ||
      TAILQ_LAST(&pf_cachequeue, pf_cachequeue) != frag);
 }
}
