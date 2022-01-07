
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zoom; int label_alpha; int alpha; scalar_t__ x; int y; scalar_t__ fullpath; } ;
typedef TYPE_1__ stripes_node_t ;
struct TYPE_7__ {int items_active_alpha; int items_passive_zoom; int items_passive_alpha; } ;
typedef TYPE_2__ stripes_handle_t ;
typedef int file_list_t ;


 int RARCH_ERR (char*) ;
 scalar_t__ file_list_get_userdata_at_offset (int *,int) ;
 int file_list_set_userdata (int *,int,TYPE_1__*) ;
 int free (scalar_t__) ;
 size_t menu_navigation_get_selection () ;
 scalar_t__ strdup (char const*) ;
 int string_is_empty (char const*) ;
 TYPE_1__* stripes_alloc_node () ;
 int stripes_item_y (TYPE_2__*,int,int) ;

__attribute__((used)) static void stripes_list_insert(void *userdata,
      file_list_t *list,
      const char *path,
      const char *fullpath,
      const char *unused,
      size_t list_size,
      unsigned entry_type)
{
   int current = 0;
   int i = (int)list_size;
   stripes_node_t *node = ((void*)0);
   stripes_handle_t *stripes = (stripes_handle_t*)userdata;
   size_t selection = menu_navigation_get_selection();

   if (!stripes || !list)
      return;

   node = (stripes_node_t*)file_list_get_userdata_at_offset(list, i);

   if (!node)
      node = stripes_alloc_node();

   if (!node)
   {
      RARCH_ERR("XMB node could not be allocated.\n");
      return;
   }

   current = (int)selection;

   if (!string_is_empty(fullpath))
   {
      if (node->fullpath)
         free(node->fullpath);

      node->fullpath = strdup(fullpath);
   }

   node->alpha = stripes->items_passive_alpha;
   node->zoom = stripes->items_passive_zoom;
   node->label_alpha = node->alpha;
   node->y = stripes_item_y(stripes, i, current);
   node->x = 0;

   if (i == current)
   {
      node->alpha = stripes->items_active_alpha;
      node->label_alpha = stripes->items_active_alpha;
      node->zoom = stripes->items_active_alpha;
   }

   file_list_set_userdata(list, i, node);
}
