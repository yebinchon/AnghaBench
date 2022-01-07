
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int renderer32x; int renderer; } ;


 int PAHW_32X ;
 int PAHW_SMS ;
 int PicoAHW ;
 int RT_8BIT_FAST ;
 int RT_COUNT ;
 TYPE_1__ currentConfig ;

__attribute__((used)) static void change_renderer(int diff)
{
 int *r;
 if (PicoAHW & PAHW_32X)
  r = &currentConfig.renderer32x;
 else
  r = &currentConfig.renderer;
 *r += diff;


 if ((PicoAHW & PAHW_SMS) && *r == RT_8BIT_FAST)
  (*r)++;

 if (*r >= RT_COUNT)
  *r = 0;
 else if (*r < 0)
  *r = RT_COUNT - 1;
}
