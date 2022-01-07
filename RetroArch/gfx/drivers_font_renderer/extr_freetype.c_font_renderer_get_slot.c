
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ usage_counter; TYPE_2__* atlas_slots; TYPE_2__** uc_map; } ;
typedef TYPE_1__ ft_font_renderer_t ;
struct TYPE_6__ {scalar_t__ last_used; int charcode; struct TYPE_6__* next; } ;
typedef TYPE_2__ freetype_atlas_slot_t ;


 int FT_ATLAS_SIZE ;

__attribute__((used)) static freetype_atlas_slot_t* font_renderer_get_slot(ft_font_renderer_t *handle)
{
   int i, map_id;
   unsigned oldest = 0;

   for (i = 1; i < FT_ATLAS_SIZE; i++)
      if ((handle->usage_counter - handle->atlas_slots[i].last_used) >
         (handle->usage_counter - handle->atlas_slots[oldest].last_used))
         oldest = i;


   map_id = handle->atlas_slots[oldest].charcode & 0xFF;
   if (handle->uc_map[map_id] == &handle->atlas_slots[oldest])
      handle->uc_map[map_id] = handle->atlas_slots[oldest].next;
   else if (handle->uc_map[map_id])
   {
      freetype_atlas_slot_t* ptr = handle->uc_map[map_id];
      while(ptr->next && ptr->next != &handle->atlas_slots[oldest])
         ptr = ptr->next;
      ptr->next = handle->atlas_slots[oldest].next;
   }

   return &handle->atlas_slots[oldest];
}
