
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct pf_addr {int * addr32; TYPE_1__ v4addr; } ;
struct pf_fragment {int fr_af; int fr_p; int fr_id; int fr_id6; struct pf_addr fr_dstx; struct pf_addr fr_srcx; } ;




 int VERIFY (int ) ;

__attribute__((used)) static __inline int
pf_frag_compare(struct pf_fragment *a, struct pf_fragment *b)
{
 int diff;

 if ((diff = a->fr_af - b->fr_af))
  return (diff);
 else if ((diff = a->fr_p - b->fr_p))
  return (diff);
 else {
  struct pf_addr *sa = &a->fr_srcx;
  struct pf_addr *sb = &b->fr_srcx;
  struct pf_addr *da = &a->fr_dstx;
  struct pf_addr *db = &b->fr_dstx;

  switch (a->fr_af) {
  default:
   VERIFY(!0 && "only IPv4 and IPv6 supported!");
   break;
  }
 }
 return (0);
}
