
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int renderer32x; int renderer; } ;


 int PAHW_32X ;
 int PicoAHW ;
 TYPE_1__ currentConfig ;

__attribute__((used)) static int get_renderer(void)
{
 if (PicoAHW & PAHW_32X)
  return currentConfig.renderer32x;
 else
  return currentConfig.renderer;
}
