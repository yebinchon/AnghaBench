
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int snapshot_size ;
typedef int pid_t ;
typedef int os_reason_t ;
typedef int memorystatus_jetsam_snapshot_t ;
typedef int memorystatus_jetsam_snapshot_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ notification_time; } ;


 scalar_t__ TRUE ;
 int kMemorystatusSnapshotNote ;
 scalar_t__ mach_absolute_time () ;
 int memorystatus_clear_errors () ;
 TYPE_1__* memorystatus_jetsam_snapshot ;
 int memorystatus_jetsam_snapshot_count ;
 scalar_t__ memorystatus_jetsam_snapshot_last_timestamp ;
 scalar_t__ memorystatus_jetsam_snapshot_timeout ;
 scalar_t__ memorystatus_kill_specific_process (int,scalar_t__,int ) ;
 scalar_t__ memorystatus_kill_top_process (scalar_t__,scalar_t__,scalar_t__,int ,int *,scalar_t__*) ;
 int memorystatus_send_note (int ,size_t*,int) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

__attribute__((used)) static boolean_t
memorystatus_kill_process_sync(pid_t victim_pid, uint32_t cause, os_reason_t jetsam_reason) {
 boolean_t res;

 uint32_t errors = 0;

 if (victim_pid == -1) {

  res = memorystatus_kill_top_process(TRUE, TRUE, cause, jetsam_reason, ((void*)0), &errors);
 } else {
  res = memorystatus_kill_specific_process(victim_pid, cause, jetsam_reason);
 }

 if (errors) {
  memorystatus_clear_errors();
 }

 if (res == TRUE) {

  proc_list_lock();
  size_t snapshot_size = sizeof(memorystatus_jetsam_snapshot_t) +
   sizeof(memorystatus_jetsam_snapshot_entry_t) * memorystatus_jetsam_snapshot_count;
  uint64_t timestamp_now = mach_absolute_time();
  memorystatus_jetsam_snapshot->notification_time = timestamp_now;
  if (memorystatus_jetsam_snapshot_count > 0 && (memorystatus_jetsam_snapshot_last_timestamp == 0 ||
    timestamp_now > memorystatus_jetsam_snapshot_last_timestamp + memorystatus_jetsam_snapshot_timeout)) {
   proc_list_unlock();
   int ret = memorystatus_send_note(kMemorystatusSnapshotNote, &snapshot_size, sizeof(snapshot_size));
   if (!ret) {
    proc_list_lock();
    memorystatus_jetsam_snapshot_last_timestamp = timestamp_now;
    proc_list_unlock();
   }
  } else {
   proc_list_unlock();
  }
 }

 return res;
}
