
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int alpha; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_10__ {size_t system_tab_end; unsigned int categories_active_idx; float categories_active_alpha; int depth; float categories_passive_alpha; } ;
typedef TYPE_2__ xmb_handle_t ;
struct TYPE_11__ {float target_value; int tag; int * subject; int * cb; int easing_enum; int duration; } ;
typedef TYPE_3__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MENU_LIST_HORIZONTAL ;
 int XMB_DELAY ;
 int menu_animation_push (TYPE_3__*) ;
 TYPE_1__* xmb_get_node (TYPE_2__*,unsigned int) ;
 size_t xmb_list_get_size (TYPE_2__*,int ) ;

__attribute__((used)) static void xmb_list_open_horizontal_list(xmb_handle_t *xmb)
{
   unsigned j;
   size_t list_size = xmb_list_get_size(xmb, MENU_LIST_HORIZONTAL)
      + xmb->system_tab_end;

   for (j = 0; j <= list_size; j++)
   {
      menu_animation_ctx_entry_t anim_entry;
      float ia = 0;
      xmb_node_t *node = xmb_get_node(xmb, j);

      if (!node)
         continue;

      if (j == xmb->categories_active_idx)
         ia = xmb->categories_active_alpha;
      else if (xmb->depth <= 1)
         ia = xmb->categories_passive_alpha;

      anim_entry.duration = XMB_DELAY;
      anim_entry.target_value = ia;
      anim_entry.subject = &node->alpha;
      anim_entry.easing_enum = EASING_OUT_QUAD;

      anim_entry.tag = -1;
      anim_entry.cb = ((void*)0);

      if (anim_entry.subject)
         menu_animation_push(&anim_entry);
   }
}
