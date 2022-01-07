
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ alpha; int zoom; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_8__ {size_t system_tab_end; unsigned int categories_active_idx; int depth; scalar_t__ categories_passive_alpha; int categories_active_zoom; scalar_t__ categories_active_alpha; int categories_passive_zoom; } ;
typedef TYPE_2__ xmb_handle_t ;


 int MENU_LIST_HORIZONTAL ;
 TYPE_1__* xmb_get_node (TYPE_2__*,unsigned int) ;
 size_t xmb_list_get_size (TYPE_2__*,int ) ;

__attribute__((used)) static void xmb_toggle_horizontal_list(xmb_handle_t *xmb)
{
   unsigned i;
   size_t list_size = xmb_list_get_size(xmb, MENU_LIST_HORIZONTAL)
      + xmb->system_tab_end;

   for (i = 0; i <= list_size; i++)
   {
      xmb_node_t *node = xmb_get_node(xmb, i);

      if (!node)
         continue;

      node->alpha = 0;
      node->zoom = xmb->categories_passive_zoom;

      if (i == xmb->categories_active_idx)
      {
         node->alpha = xmb->categories_active_alpha;
         node->zoom = xmb->categories_active_zoom;
      }
      else if (xmb->depth <= 1)
         node->alpha = xmb->categories_passive_alpha;
   }
}
