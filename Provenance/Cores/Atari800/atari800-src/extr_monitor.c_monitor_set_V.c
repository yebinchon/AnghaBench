
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrV ;
 int CPU_SetV ;

__attribute__((used)) static void monitor_set_V(int const val)
{
 if (val == 0)
  CPU_ClrV;
 else if (val == 1)
  CPU_SetV;
}
