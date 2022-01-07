
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_5__ {unsigned int type; } ;


 unsigned int FILE_TYPE_DIRECTORY ;
 int menu_entries_elem_get_first_char (TYPE_2__*,unsigned int) ;
 int menu_navigation_add_scroll_index (int) ;
 scalar_t__ scroll_index_size ;

__attribute__((used)) static void menu_entries_build_scroll_indices(file_list_t *list)
{
   int current;
   bool current_is_dir = 0;
   unsigned type = 0;
   size_t i = 0;

   scroll_index_size = 0;

   menu_navigation_add_scroll_index(0);

   current = menu_entries_elem_get_first_char(list, 0);
   type = list->list[0].type;

   if (type == FILE_TYPE_DIRECTORY)
      current_is_dir = 1;

   for (i = 1; i < list->size; i++)
   {
      int first = menu_entries_elem_get_first_char(list, (unsigned)i);
      bool is_dir = 0;
      unsigned idx = (unsigned)i;

      type = list->list[idx].type;

      if (type == FILE_TYPE_DIRECTORY)
         is_dir = 1;

      if ((current_is_dir && !is_dir) || (first > current))
         menu_navigation_add_scroll_index(i);

      current = first;
      current_is_dir = is_dir;
   }

   menu_navigation_add_scroll_index(list->size - 1);
}
