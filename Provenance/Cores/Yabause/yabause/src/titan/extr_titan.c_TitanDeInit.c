
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * linescreen; int * vdp2framebuffer; } ;


 int free (int ) ;
 TYPE_1__ tt_context ;

int TitanDeInit()
{
   int i;

   for(i = 0;i < 6;i++)
      free(tt_context.vdp2framebuffer[i]);

   for(i = 1;i < 4;i++)
      free(tt_context.linescreen[i]);

   return 0;
}
