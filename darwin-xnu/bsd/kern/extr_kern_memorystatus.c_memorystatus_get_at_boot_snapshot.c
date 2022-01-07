
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notification_time; } ;
typedef TYPE_1__ memorystatus_jetsam_snapshot_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int MEMORYSTATUS_DEBUG (int,char*,long,long,int ) ;
 int mach_absolute_time () ;
 TYPE_1__ memorystatus_at_boot_snapshot ;

__attribute__((used)) static int
memorystatus_get_at_boot_snapshot(memorystatus_jetsam_snapshot_t **snapshot, size_t *snapshot_size, boolean_t size_only) {
 size_t input_size = *snapshot_size;




 *snapshot_size = sizeof(memorystatus_jetsam_snapshot_t);

 if (size_only) {
  return 0;
 }




 if (input_size < *snapshot_size) {
  return EINVAL;
 }




 memorystatus_at_boot_snapshot.notification_time = mach_absolute_time();
 *snapshot = &memorystatus_at_boot_snapshot;

 MEMORYSTATUS_DEBUG(7, "memorystatus_get_at_boot_snapshot: returned inputsize (%ld), snapshot_size(%ld), listcount(%d)\n",
      (long)input_size, (long)*snapshot_size, 0);
 return 0;
}
