
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_5__ {scalar_t__ pm_eptp; } ;


 int PMAP_CREATE_64BIT ;
 int PMAP_CREATE_EPT ;
 TYPE_1__* PMAP_NULL ;
 int assert (int ) ;
 int current_task () ;
 int get_task_ledger (int ) ;
 int is_ept_pmap (TYPE_1__*) ;
 TYPE_1__* pmap_create_options (int ,int ,int) ;

void
hv_ept_pmap_create(void **ept_pmap, void **eptp)
{
 pmap_t p;

 if ((ept_pmap == ((void*)0)) || (eptp == ((void*)0))) {
  return;
 }

 p = pmap_create_options(get_task_ledger(current_task()), 0, (PMAP_CREATE_64BIT | PMAP_CREATE_EPT));
 if (p == PMAP_NULL) {
  *ept_pmap = ((void*)0);
  *eptp = ((void*)0);
  return;
 }

 assert(is_ept_pmap(p));

 *ept_pmap = (void*)p;
 *eptp = (void*)(p->pm_eptp);
 return;
}
