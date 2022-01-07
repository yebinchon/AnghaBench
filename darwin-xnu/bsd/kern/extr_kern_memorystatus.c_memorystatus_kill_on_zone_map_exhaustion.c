
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ os_reason_t ;
typedef int boolean_t ;


 int FALSE ;
 int JETSAM_REASON_ZONE_MAP_EXHAUSTION ;
 int OS_REASON_JETSAM ;
 scalar_t__ OS_REASON_NULL ;
 int kMemorystatusKilledZoneMapExhaustion ;
 int memorystatus_kill_process_async (int,int ) ;
 int memorystatus_kill_process_sync (int,int ,scalar_t__) ;
 scalar_t__ os_reason_create (int ,int ) ;
 int printf (char*) ;

boolean_t
memorystatus_kill_on_zone_map_exhaustion(pid_t pid) {
 boolean_t res = FALSE;
 if (pid == -1) {
  res = memorystatus_kill_process_async(-1, kMemorystatusKilledZoneMapExhaustion);
 } else {
  os_reason_t jetsam_reason = os_reason_create(OS_REASON_JETSAM, JETSAM_REASON_ZONE_MAP_EXHAUSTION);
  if (jetsam_reason == OS_REASON_NULL) {
   printf("memorystatus_kill_on_zone_map_exhaustion: failed to allocate jetsam reason\n");
  }

  res = memorystatus_kill_process_sync(pid, kMemorystatusKilledZoneMapExhaustion, jetsam_reason);
 }
 return res;
}
