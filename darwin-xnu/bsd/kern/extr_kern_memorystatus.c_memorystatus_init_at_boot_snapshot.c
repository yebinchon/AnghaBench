
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int snapshot_time; scalar_t__ notification_time; scalar_t__ entry_count; } ;


 int mach_absolute_time () ;
 TYPE_1__ memorystatus_at_boot_snapshot ;
 int memorystatus_init_snapshot_vmstats (TYPE_1__*) ;

void
memorystatus_init_at_boot_snapshot() {
 memorystatus_init_snapshot_vmstats(&memorystatus_at_boot_snapshot);
 memorystatus_at_boot_snapshot.entry_count = 0;
 memorystatus_at_boot_snapshot.notification_time = 0;
 memorystatus_at_boot_snapshot.snapshot_time = mach_absolute_time();
}
