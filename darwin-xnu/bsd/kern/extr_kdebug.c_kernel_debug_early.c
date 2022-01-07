
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {uintptr_t arg1; uintptr_t arg2; uintptr_t arg3; uintptr_t arg4; scalar_t__ arg5; int timestamp; int debugid; } ;


 size_t KD_EARLY_BUFFER_NBUFS ;
 int KERNEL_DEBUG_CONSTANT (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,int ) ;
 scalar_t__ cpu_number () ;
 TYPE_1__* kd_early_buffer ;
 scalar_t__ kd_early_done ;
 size_t kd_early_index ;
 int kd_early_overflow ;
 int mach_absolute_time () ;
 scalar_t__ master_cpu ;

void
kernel_debug_early(
 uint32_t debugid,
 uintptr_t arg1,
 uintptr_t arg2,
 uintptr_t arg3,
 uintptr_t arg4)
{

 if (kd_early_done) {
  KERNEL_DEBUG_CONSTANT(debugid, arg1, arg2, arg3, arg4, 0);
  return;
 }


 kd_early_overflow = kd_early_index >= KD_EARLY_BUFFER_NBUFS;
 if (kd_early_overflow || cpu_number() != master_cpu) {
  return;
 }

 kd_early_buffer[kd_early_index].debugid = debugid;
 kd_early_buffer[kd_early_index].timestamp = mach_absolute_time();
 kd_early_buffer[kd_early_index].arg1 = arg1;
 kd_early_buffer[kd_early_index].arg2 = arg2;
 kd_early_buffer[kd_early_index].arg3 = arg3;
 kd_early_buffer[kd_early_index].arg4 = arg4;
 kd_early_buffer[kd_early_index].arg5 = 0;
 kd_early_index++;
}
