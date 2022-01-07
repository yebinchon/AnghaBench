
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int dirty; int count; int capacity; TYPE_2__* elements; } ;
typedef TYPE_1__ rcheevos_fixups_t ;
struct TYPE_9__ {unsigned int address; int const* location; } ;
typedef TYPE_2__ rcheevos_fixup_t ;


 scalar_t__ bsearch (TYPE_2__*,TYPE_2__*,int,int,int ) ;
 int qsort (TYPE_2__*,int,int,int ) ;
 int rcheevos_cmpaddr ;
 int * rcheevos_patch_address (unsigned int,int) ;
 scalar_t__ realloc (TYPE_2__*,unsigned int) ;

const uint8_t* rcheevos_fixup_find(rcheevos_fixups_t* fixups, unsigned address, int console)
{
   rcheevos_fixup_t key;
   rcheevos_fixup_t* found;
   const uint8_t* location;

   if (fixups->dirty)
   {
      qsort(fixups->elements, fixups->count, sizeof(rcheevos_fixup_t), rcheevos_cmpaddr);
      fixups->dirty = 0;
   }

   key.address = address;
   found = (rcheevos_fixup_t*)bsearch(&key, fixups->elements, fixups->count, sizeof(rcheevos_fixup_t), rcheevos_cmpaddr);

   if (found != ((void*)0))
   {
      return found->location;
   }

   if (fixups->count == fixups->capacity)
   {
      unsigned new_capacity = fixups->capacity == 0 ? 16 : fixups->capacity * 2;
      rcheevos_fixup_t* new_elements = (rcheevos_fixup_t*)
         realloc(fixups->elements, new_capacity * sizeof(rcheevos_fixup_t));

      if (new_elements == ((void*)0))
      {
         return ((void*)0);
      }

      fixups->elements = new_elements;
      fixups->capacity = new_capacity;
   }

   fixups->elements[fixups->count].address = address;
   fixups->elements[fixups->count++].location = location =
      rcheevos_patch_address(address, console);
   fixups->dirty = 1;

   return location;
}
