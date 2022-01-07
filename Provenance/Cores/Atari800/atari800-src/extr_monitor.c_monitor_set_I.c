
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrI ;
 int CPU_SetI ;

__attribute__((used)) static void monitor_set_I(int const val)
{
 if (val == 0)
  CPU_ClrI;
 else if (val == 1)
  CPU_SetI;
}
