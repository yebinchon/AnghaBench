
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int memorystatus_jetsam_snapshot_t ;
typedef int memorystatus_jetsam_snapshot_entry_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int ENOMEM ;
 int MEMORYSTATUS_DEBUG (int,char*,long,long,long) ;
 scalar_t__ kalloc (size_t) ;
 int memorystatus_init_jetsam_snapshot_locked (int *,int) ;
 int memorystatus_list_count ;
 int memset (int *,int ,size_t) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static int
memorystatus_get_on_demand_snapshot(memorystatus_jetsam_snapshot_t **snapshot, size_t *snapshot_size, boolean_t size_only) {
 size_t input_size = *snapshot_size;
 uint32_t ods_list_count = memorystatus_list_count;
 memorystatus_jetsam_snapshot_t *ods = ((void*)0);

 *snapshot_size = sizeof(memorystatus_jetsam_snapshot_t) + (sizeof(memorystatus_jetsam_snapshot_entry_t) * (ods_list_count));

 if (size_only) {
  return 0;
 }







 if (input_size < *snapshot_size) {
  return EINVAL;
 }




 ods = (memorystatus_jetsam_snapshot_t *)kalloc(*snapshot_size);
 if (!ods) {
  return (ENOMEM);
 }

 memset(ods, 0, *snapshot_size);

 proc_list_lock();
 memorystatus_init_jetsam_snapshot_locked(ods, ods_list_count);
 proc_list_unlock();







 *snapshot = ods;

 MEMORYSTATUS_DEBUG(7, "memorystatus_get_on_demand_snapshot: returned inputsize (%ld), snapshot_size(%ld), listcount(%ld)\n",
       (long)input_size, (long)*snapshot_size, (long)ods_list_count);

 return 0;
}
