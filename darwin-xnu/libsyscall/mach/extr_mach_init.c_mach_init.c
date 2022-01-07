
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_init_doit () ;

int
mach_init(void)
{
 static bool mach_init_inited = 0;
 if (!mach_init_inited) {
  mach_init_doit();
  mach_init_inited = 1;
 }
 return 0;
}
