
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int secondary; int primary; } ;
struct TYPE_7__ {TYPE_1__ thumbnails; } ;
typedef TYPE_2__ materialui_node_t ;
struct TYPE_8__ {unsigned int size; } ;
typedef TYPE_3__ file_list_t ;


 scalar_t__ file_list_get_userdata_at_offset (TYPE_3__*,unsigned int) ;
 TYPE_3__* menu_entries_get_selection_buf_ptr (int ) ;
 int menu_thumbnail_reset (int *) ;

__attribute__((used)) static void materialui_reset_thumbnails(void)
{
   file_list_t *list = menu_entries_get_selection_buf_ptr(0);
   unsigned i;

   if (!list)
      return;


   for (i = 0; i < list->size; i++)
   {
      materialui_node_t *node = (materialui_node_t*)
            file_list_get_userdata_at_offset(list, i);

      if (!node)
         continue;

      menu_thumbnail_reset(&node->thumbnails.primary);
      menu_thumbnail_reset(&node->thumbnails.secondary);
   }
}
