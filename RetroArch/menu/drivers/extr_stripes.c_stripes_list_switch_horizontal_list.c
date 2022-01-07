
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int width; int x; int y; int zoom; int alpha; } ;
typedef TYPE_1__ stripes_node_t ;
struct TYPE_10__ {size_t system_tab_end; float categories_passive_alpha; float categories_passive_zoom; float categories_passive_width; float categories_before_x; float categories_before_y; unsigned int categories_active_idx; float categories_active_alpha; float categories_active_zoom; float categories_active_width; float categories_active_x; float categories_active_y; float categories_after_x; float categories_after_y; } ;
typedef TYPE_2__ stripes_handle_t ;
struct TYPE_11__ {float target_value; int tag; int * subject; int * cb; int easing_enum; int duration; } ;
typedef TYPE_3__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MENU_LIST_HORIZONTAL ;
 int STRIPES_DELAY ;
 int menu_animation_push (TYPE_3__*) ;
 TYPE_1__* stripes_get_node (TYPE_2__*,unsigned int) ;
 size_t stripes_list_get_size (TYPE_2__*,int ) ;

__attribute__((used)) static void stripes_list_switch_horizontal_list(stripes_handle_t *stripes)
{
   unsigned j;
   size_t list_size = stripes_list_get_size(stripes, MENU_LIST_HORIZONTAL)
      + stripes->system_tab_end;

   for (j = 0; j <= list_size; j++)
   {
      menu_animation_ctx_entry_t entry;
      float ia = stripes->categories_passive_alpha;
      float iz = stripes->categories_passive_zoom;
      float iw = stripes->categories_passive_width;
      float ix = stripes->categories_before_x;
      float iy = stripes->categories_before_y;
      stripes_node_t *node = stripes_get_node(stripes, j);

      if (!node)
         continue;

      if (j == stripes->categories_active_idx)
      {
         ia = stripes->categories_active_alpha;
         iz = stripes->categories_active_zoom;
         iw = stripes->categories_active_width;
         ix = stripes->categories_active_x;
         iy = stripes->categories_active_y;
      }
      else if (j < stripes->categories_active_idx)
      {
         ix = stripes->categories_before_x;
         iy = stripes->categories_before_y;
      }
      else if (j > stripes->categories_active_idx)
      {
         ix = stripes->categories_after_x;
         iy = stripes->categories_after_y;
      }

      entry.duration = STRIPES_DELAY;
      entry.target_value = ia;
      entry.subject = &node->alpha;
      entry.easing_enum = EASING_OUT_QUAD;

      entry.tag = -1;
      entry.cb = ((void*)0);

      menu_animation_push(&entry);

      entry.target_value = iz;
      entry.subject = &node->zoom;

      menu_animation_push(&entry);

      entry.target_value = iy;
      entry.subject = &node->y;

      menu_animation_push(&entry);

      entry.target_value = ix;
      entry.subject = &node->x;

      menu_animation_push(&entry);

      entry.target_value = iw;
      entry.subject = &node->width;

      menu_animation_push(&entry);
   }
}
