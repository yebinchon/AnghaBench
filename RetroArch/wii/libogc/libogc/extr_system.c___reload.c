
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_RETURNTOMENU ;
 int SYS_ResetSystem (int ,int ,int ) ;
 int __exception_closeall () ;
 scalar_t__ __stub_found () ;
 int reload () ;

void __reload()
{
 if(__stub_found()) {
  __exception_closeall();
  reload();
 }
 SYS_ResetSystem(SYS_RETURNTOMENU, 0, 0);
}
