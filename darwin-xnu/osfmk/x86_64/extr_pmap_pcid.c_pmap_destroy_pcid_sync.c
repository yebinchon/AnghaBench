
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {scalar_t__* pmap_pcid_cpus; } ;


 scalar_t__ FALSE ;
 scalar_t__ PMAP_PCID_INVALID_PCID ;
 int PMAP_PCID_MAX_CPUS ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int pmap_assert (int) ;
 int pmap_pcid_deallocate_pcid (int,TYPE_1__*) ;

void pmap_destroy_pcid_sync(pmap_t p) {
 int i;
 pmap_assert(ml_get_interrupts_enabled() == FALSE || get_preemption_level() !=0);
 for (i = 0; i < PMAP_PCID_MAX_CPUS; i++)
  if (p->pmap_pcid_cpus[i] != PMAP_PCID_INVALID_PCID)
   pmap_pcid_deallocate_pcid(i, p);
}
