
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int thread_continue_t ;


 int ASSERT (int) ;
 scalar_t__ cfil_info_udp_expire ;
 scalar_t__ cfil_udp_gc_thread ;
 int cfil_udp_gc_thread_sleep (int) ;
 scalar_t__ current_thread () ;
 int thread_block_parameter (int ,int *) ;
 int thread_set_thread_name (scalar_t__,char*) ;

__attribute__((used)) static void
cfil_udp_gc_thread_func(void *v, wait_result_t w)
{
#pragma unused(v, w)

 ASSERT(cfil_udp_gc_thread == current_thread());
 thread_set_thread_name(current_thread(), "CFIL_UPD_GC");


 cfil_udp_gc_thread_sleep(0);
 thread_block_parameter((thread_continue_t) cfil_info_udp_expire, ((void*)0));

}
