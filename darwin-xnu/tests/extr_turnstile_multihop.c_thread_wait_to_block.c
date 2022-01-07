
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_info_t ;
struct TYPE_2__ {scalar_t__ pth_run_state; } ;
typedef TYPE_1__ thread_extended_info_data_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int SWITCH_OPTION_DEPRESS ;
 int THREAD_EXTENDED_INFO ;
 int THREAD_EXTENDED_INFO_COUNT ;
 scalar_t__ TH_STATE_WAITING ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int thread_info (int ,int ,int ,int *) ;
 int thread_switch (int ,int ,int ) ;

__attribute__((used)) static void
thread_wait_to_block(mach_port_t thread_port)
{
 thread_extended_info_data_t extended_info;
 kern_return_t kr;

 while (1) {
  mach_msg_type_number_t count = THREAD_EXTENDED_INFO_COUNT;
  kr = thread_info(thread_port, THREAD_EXTENDED_INFO,
       (thread_info_t)&extended_info, &count);

  T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "thread_info");

  if (extended_info.pth_run_state == TH_STATE_WAITING) {
   T_LOG("Target thread blocked\n");
   break;
  }
  thread_switch(thread_port, SWITCH_OPTION_DEPRESS, 0);
 }
}
