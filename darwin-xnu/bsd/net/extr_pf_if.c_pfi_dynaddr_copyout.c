
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dyn; scalar_t__ dyncnt; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_1__ p; } ;
struct TYPE_4__ {scalar_t__ pfid_acnt6; scalar_t__ pfid_acnt4; int * pfid_kif; } ;


 scalar_t__ PF_ADDR_DYNIFTL ;

void
pfi_dynaddr_copyout(struct pf_addr_wrap *aw)
{
 if (aw->type != PF_ADDR_DYNIFTL || aw->p.dyn == ((void*)0) ||
     aw->p.dyn->pfid_kif == ((void*)0))
  return;
 aw->p.dyncnt = aw->p.dyn->pfid_acnt4 + aw->p.dyn->pfid_acnt6;
}
