
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int draw_finished; } ;


 TYPE_1__ vidsoft_vdp1_thread_context ;
 scalar_t__ vidsoft_vdp1_thread_enabled ;

void VidsoftWaitForVdp1Thread()
{
   if (vidsoft_vdp1_thread_enabled)
   {
      while (!vidsoft_vdp1_thread_context.draw_finished){}
   }
}
