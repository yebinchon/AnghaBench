
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrD ;
 int CPU_SetD ;

__attribute__((used)) static void monitor_set_D(int const val)
{
 if (val == 0)
  CPU_ClrD;
 else if (val == 1)
  CPU_SetD;
}
