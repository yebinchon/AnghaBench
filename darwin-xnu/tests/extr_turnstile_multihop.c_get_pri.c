
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
typedef int thread_info_t ;
struct TYPE_2__ {int pth_curpri; } ;
typedef TYPE_1__ thread_extended_info_data_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;


 int THREAD_EXTENDED_INFO ;
 int THREAD_EXTENDED_INFO_COUNT ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int thread_info (int ,int ,int ,int *) ;

__attribute__((used)) static int get_pri(thread_t thread_port) {
 kern_return_t kr;

 thread_extended_info_data_t extended_info;
 mach_msg_type_number_t count = THREAD_EXTENDED_INFO_COUNT;
 kr = thread_info(thread_port, THREAD_EXTENDED_INFO,
                    (thread_info_t)&extended_info, &count);

 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "thread_info");

 return extended_info.pth_curpri;
}
