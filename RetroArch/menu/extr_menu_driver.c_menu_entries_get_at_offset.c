
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_5__ {char* alt; char* path; } ;


 int file_list_get_at_offset (TYPE_2__ const*,size_t,char const**,char const**,unsigned int*,size_t*) ;

void menu_entries_get_at_offset(const file_list_t *list, size_t idx,
      const char **path, const char **label, unsigned *file_type,
      size_t *entry_idx, const char **alt)
{
   file_list_get_at_offset(list, idx, path, label, file_type, entry_idx);
   if (list && alt)
      *alt = list->list[idx].alt
         ? list->list[idx].alt
         : list->list[idx].path;
}
