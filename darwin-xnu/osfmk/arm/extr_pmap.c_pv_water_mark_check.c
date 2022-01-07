
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hw_compare_and_store (int ,int,int *) ;
 int mapping_replenish_event ;
 int mappingrecurse ;
 scalar_t__ pv_free_count ;
 scalar_t__ pv_kern_free_count ;
 scalar_t__ pv_kern_low_water_mark ;
 scalar_t__ pv_low_water_mark ;
 int thread_wakeup (int *) ;

__attribute__((used)) static inline void
pv_water_mark_check(void)
{
 if ((pv_free_count < pv_low_water_mark) || (pv_kern_free_count < pv_kern_low_water_mark)) {
  if (!mappingrecurse && hw_compare_and_store(0,1, &mappingrecurse))
   thread_wakeup(&mapping_replenish_event);
 }
}
