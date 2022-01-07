
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int IOSleep (int) ;
 scalar_t__ RAW_file_offset ;
 scalar_t__ RAW_file_written ;
 int delete_buffers () ;
 int kdbg_bootstrap (int ) ;
 int kdbg_clear_thread_map () ;
 int kernel_debug_disable () ;

int
kdbg_reinit(boolean_t early_trace)
{
 int ret = 0;






 kernel_debug_disable();






 IOSleep(100);

 delete_buffers();

 kdbg_clear_thread_map();
 ret = kdbg_bootstrap(early_trace);

 RAW_file_offset = 0;
 RAW_file_written = 0;

 return(ret);
}
