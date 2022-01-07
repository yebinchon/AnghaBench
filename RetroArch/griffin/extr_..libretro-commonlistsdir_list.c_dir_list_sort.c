
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_elem {int dummy; } ;
struct string_list {int size; int elems; } ;


 int qsort (int ,int ,int,int ) ;
 int qstrcmp_dir ;
 int qstrcmp_plain ;

void dir_list_sort(struct string_list *list, bool dir_first)
{
   if (list)
      qsort(list->elems, list->size, sizeof(struct string_list_elem),
            dir_first ? qstrcmp_dir : qstrcmp_plain);
}
