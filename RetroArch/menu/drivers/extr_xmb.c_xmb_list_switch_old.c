
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float alpha; float label_alpha; float x; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_7__ {int icon_spacing_horizontal; } ;
typedef TYPE_2__ xmb_handle_t ;
typedef int file_list_t ;


 size_t file_list_get_size (int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int *,unsigned int) ;
 int video_driver_get_size (int *,unsigned int*) ;
 int xmb_calculate_visible_range (TYPE_2__*,unsigned int,size_t,unsigned int,unsigned int*,unsigned int*) ;
 int xmb_push_animations (TYPE_1__*,uintptr_t,float,float) ;

__attribute__((used)) static void xmb_list_switch_old(xmb_handle_t *xmb,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, height;
   size_t end = file_list_get_size(list);
   float ix = -xmb->icon_spacing_horizontal * dir;
   float ia = 0;
   unsigned first = 0;
   unsigned last = (unsigned)(end > 0 ? end - 1 : 0);

   video_driver_get_size(((void*)0), &height);
   xmb_calculate_visible_range(xmb, height, end,
         (unsigned)current, &first, &last);

   for (i = 0; i < end; i++)
   {
      xmb_node_t *node = (xmb_node_t*)
         file_list_get_userdata_at_offset(list, i);

      if (!node)
         continue;

      if (i >= first && i <= last)
         xmb_push_animations(node, (uintptr_t)list, ia, ix);
      else
      {
         node->alpha = node->label_alpha = ia;
         node->x = ix;
      }
   }
}
