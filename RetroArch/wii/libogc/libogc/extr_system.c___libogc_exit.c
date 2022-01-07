
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_RETURNTOMENU ;
 int SYS_ResetSystem (int ,int ,int ) ;
 int SYS_SHUTDOWN ;
 int __lwp_thread_stopmultitasking (int ) ;
 scalar_t__ __stub_found () ;
 int reload ;

void __libogc_exit(int status)
{
 if(__stub_found()) {
  SYS_ResetSystem(SYS_SHUTDOWN,0,0);
  __lwp_thread_stopmultitasking(reload);
 }
 SYS_ResetSystem(SYS_RETURNTOMENU, 0, 0);
}
