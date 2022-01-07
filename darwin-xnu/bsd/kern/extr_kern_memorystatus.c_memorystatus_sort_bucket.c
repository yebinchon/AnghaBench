
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;


 int COALITION_SORT_DEFAULT ;
 int EINVAL ;

 int JETSAM_SORT_DEFAULT ;
 unsigned int MEMSTAT_BUCKET_COUNT ;
 int memorystatus_sort_by_largest_coalition_locked (unsigned int,int) ;
 int memorystatus_sort_by_largest_process_locked (unsigned int) ;
 TYPE_1__* memstat_bucket ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static int memorystatus_sort_bucket(unsigned int bucket_index, int sort_order)
{
 int coal_sort_order;




        if (bucket_index >= MEMSTAT_BUCKET_COUNT) {
  return(EINVAL);
        }
        if (sort_order == JETSAM_SORT_DEFAULT) {
  coal_sort_order = COALITION_SORT_DEFAULT;
 } else {
  return(EINVAL);
 }


 proc_list_lock();

 if (memstat_bucket[bucket_index].count == 0) {
  proc_list_unlock();
  return (0);
 }

 switch (bucket_index) {
 case 128:
  if (memorystatus_sort_by_largest_coalition_locked(bucket_index, coal_sort_order) == 0) {



   memorystatus_sort_by_largest_process_locked(bucket_index);
  }
  break;
 default:
  memorystatus_sort_by_largest_process_locked(bucket_index);
  break;
 }
 proc_list_unlock();

        return(0);
}
