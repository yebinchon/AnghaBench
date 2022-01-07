
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ peak; } ;
typedef TYPE_1__ vm_allocation_zone_total_t ;
typedef int vm_allocation_site_t ;
typedef size_t uint32_t ;


 size_t VM_KERN_COUNTER_COUNT ;
 size_t VM_MAX_TAG_VALUE ;
 size_t VM_MAX_TAG_ZONES ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int ** vm_allocation_sites ;
 int vm_allocation_sites_lock ;
 TYPE_1__** vm_allocation_zone_totals ;

uint32_t
vm_page_diagnose_estimate(void)
{
    vm_allocation_site_t * site;
    uint32_t count;
    uint32_t idx;

 lck_spin_lock(&vm_allocation_sites_lock);
 for (count = idx = 0; idx < VM_MAX_TAG_VALUE; idx++)
    {
  site = vm_allocation_sites[idx];
  if (!site) continue;
  count++;
    }
 lck_spin_unlock(&vm_allocation_sites_lock);


    count += 8;
    count += VM_KERN_COUNTER_COUNT;

    return (count);
}
