
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tqe_next; int * tqe_prev; } ;
struct pf_pooladdr {char* ifname; int * kif; TYPE_1__ entries; } ;


 int bcopy (struct pf_pooladdr*,struct pf_pooladdr*,int) ;

__attribute__((used)) static void
pf_pooladdr_copyin(struct pf_pooladdr *src, struct pf_pooladdr *dst)
{
 bcopy(src, dst, sizeof (struct pf_pooladdr));

 dst->entries.tqe_prev = ((void*)0);
 dst->entries.tqe_next = ((void*)0);
 dst->ifname[sizeof (dst->ifname) - 1] = '\0';
 dst->kif = ((void*)0);
}
