
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* sram; int on; } ;



 TYPE_1__ sram ;

void *retro_get_memory_data(unsigned id)
{
   if (!sram.on)
      return ((void*)0);

   switch (id)
   {
      case 128:
         return sram.sram;

      default:
         return ((void*)0);
   }
}
