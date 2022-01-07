
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sys_process_exit (int ) ;

__attribute__((used)) static void frontend_ps3_shutdown(bool unused)
{
   sys_process_exit(0);
}
