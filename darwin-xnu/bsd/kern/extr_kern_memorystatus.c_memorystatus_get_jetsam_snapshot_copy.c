
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memorystatus_jetsam_snapshot_t ;
typedef int memorystatus_jetsam_snapshot_entry_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int MEMORYSTATUS_DEBUG (int,char*,long,long,long) ;
 int * memorystatus_jetsam_snapshot_copy ;
 int memorystatus_jetsam_snapshot_copy_count ;

__attribute__((used)) static int
memorystatus_get_jetsam_snapshot_copy(memorystatus_jetsam_snapshot_t **snapshot, size_t *snapshot_size, boolean_t size_only) {
 size_t input_size = *snapshot_size;

 if (memorystatus_jetsam_snapshot_copy_count > 0) {
  *snapshot_size = sizeof(memorystatus_jetsam_snapshot_t) + (sizeof(memorystatus_jetsam_snapshot_entry_t) * (memorystatus_jetsam_snapshot_copy_count));
 } else {
  *snapshot_size = 0;
 }

 if (size_only) {
  return 0;
 }

 if (input_size < *snapshot_size) {
  return EINVAL;
 }

 *snapshot = memorystatus_jetsam_snapshot_copy;

 MEMORYSTATUS_DEBUG(7, "memorystatus_get_jetsam_snapshot_copy: returned inputsize (%ld), snapshot_size(%ld), listcount(%ld)\n",
       (long)input_size, (long)*snapshot_size, (long)memorystatus_jetsam_snapshot_copy_count);

 return 0;
}
