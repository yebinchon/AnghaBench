
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on; } ;



 TYPE_1__ sram ;

size_t retro_get_memory_size(unsigned id)
{
   if (!sram.on)
      return 0;

   switch (id)
   {
      case 128:
         return 0x10000;

      default:
         return 0;
   }
}
