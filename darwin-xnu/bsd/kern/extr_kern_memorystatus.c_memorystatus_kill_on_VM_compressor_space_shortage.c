
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ os_reason_t ;
typedef scalar_t__ boolean_t ;


 int JETSAM_REASON_MEMORY_VMCOMPRESSOR_SPACE_SHORTAGE ;
 int OS_REASON_JETSAM ;
 scalar_t__ OS_REASON_NULL ;
 int kMemorystatusKilledVMCompressorSpaceShortage ;
 scalar_t__ memorystatus_kill_process_async (int,int ) ;
 scalar_t__ memorystatus_kill_process_sync (int,int ,scalar_t__) ;
 scalar_t__ os_reason_create (int ,int ) ;
 int printf (char*) ;

boolean_t
memorystatus_kill_on_VM_compressor_space_shortage(boolean_t async) {
 if (async) {
  return memorystatus_kill_process_async(-1, kMemorystatusKilledVMCompressorSpaceShortage);
 } else {
  os_reason_t jetsam_reason = os_reason_create(OS_REASON_JETSAM, JETSAM_REASON_MEMORY_VMCOMPRESSOR_SPACE_SHORTAGE);
  if (jetsam_reason == OS_REASON_NULL) {
   printf("memorystatus_kill_on_VM_compressor_space_shortage -- sync: failed to allocate jetsam reason\n");
  }

  return memorystatus_kill_process_sync(-1, kMemorystatusKilledVMCompressorSpaceShortage, jetsam_reason);
 }
}
