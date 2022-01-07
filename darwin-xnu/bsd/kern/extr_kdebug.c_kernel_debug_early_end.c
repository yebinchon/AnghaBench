
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ oldest_time; } ;
struct TYPE_3__ {int arg4; int arg3; int arg2; int arg1; int timestamp; int debugid; } ;


 int KDBG_RELEASE (int ,int) ;
 int TRACE_LOST_EVENTS ;
 int TRACE_TIMESTAMPS ;
 scalar_t__ cpu_number () ;
 TYPE_2__ kd_ctrl_page ;
 TYPE_1__* kd_early_buffer ;
 int kd_early_done ;
 unsigned int kd_early_index ;
 scalar_t__ kd_early_overflow ;
 int kernel_debug_enter (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int kernel_debug_string_early (char*) ;
 scalar_t__ master_cpu ;
 int panic (char*) ;
 int tsc_at_boot ;
 int tsc_rebase_abs_time ;

__attribute__((used)) static void
kernel_debug_early_end(void)
{
 if (cpu_number() != master_cpu) {
  panic("kernel_debug_early_end() not call on boot processor");
 }


 kd_ctrl_page.oldest_time = 0;



 kernel_debug_enter(0,
   TRACE_TIMESTAMPS,
   0,
   (uint32_t)(tsc_rebase_abs_time >> 32),
   (uint32_t)tsc_rebase_abs_time,
   tsc_at_boot,
   0,
   0);

 for (unsigned int i = 0; i < kd_early_index; i++) {
  kernel_debug_enter(0,
   kd_early_buffer[i].debugid,
   kd_early_buffer[i].timestamp,
   kd_early_buffer[i].arg1,
   kd_early_buffer[i].arg2,
   kd_early_buffer[i].arg3,
   kd_early_buffer[i].arg4,
   0);
 }


 if (kd_early_overflow) {
  KDBG_RELEASE(TRACE_LOST_EVENTS, 1);
 }

 kd_early_done = 1;


 kernel_debug_string_early("early trace done");
}
