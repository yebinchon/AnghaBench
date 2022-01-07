
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SCROLL_INDEX_SIZE ;
 size_t* scroll_index_list ;
 size_t scroll_index_size ;

__attribute__((used)) static void menu_navigation_add_scroll_index(size_t sel)
{
   scroll_index_list[scroll_index_size] = sel;

   if (!((scroll_index_size + 1) >= SCROLL_INDEX_SIZE))
      scroll_index_size++;
}
