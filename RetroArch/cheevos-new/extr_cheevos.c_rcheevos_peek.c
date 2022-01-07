
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int console_id; } ;
struct TYPE_4__ {TYPE_1__ patchdata; int fixups; } ;


 int* rcheevos_fixup_find (int *,unsigned int,int ) ;
 TYPE_2__ rcheevos_locals ;

__attribute__((used)) static unsigned rcheevos_peek(unsigned address, unsigned num_bytes, void* ud)
{
   const uint8_t* data = rcheevos_fixup_find(&rcheevos_locals.fixups,
      address, rcheevos_locals.patchdata.console_id);
   unsigned value = 0;

   if (data)
   {
      switch (num_bytes)
      {
         case 4: value |= data[2] << 16 | data[3] << 24;
         case 2: value |= data[1] << 8;
         case 1: value |= data[0];
      }
   }

   return value;
}
