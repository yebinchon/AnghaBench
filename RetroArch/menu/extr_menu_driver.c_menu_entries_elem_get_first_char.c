
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {char* alt; char* path; } ;


 int tolower (int) ;

__attribute__((used)) static int menu_entries_elem_get_first_char(
      file_list_t *list, unsigned offset)
{
   int ret = 0;
   const char *path = ((void*)0);

   if (list)
      if ((path = list->list[offset].alt
         ? list->list[offset].alt
         : list->list[offset].path))
         ret = tolower((int)*path);



   if (ret < 'a')
      return ('a' - 1);
   else if (ret > 'z')
      return ('z' + 1);
   return ret;
}
