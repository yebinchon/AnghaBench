
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int capacity; int size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_5__ {unsigned int type; size_t directory_ptr; size_t entry_idx; int * path; int * label; int * actiondata; int * userdata; int * alt; } ;


 int file_list_reserve (TYPE_2__*,int) ;
 void* strdup (char const*) ;

bool file_list_append(file_list_t *list,
      const char *path, const char *label,
      unsigned type, size_t directory_ptr,
      size_t entry_idx)
{
   unsigned idx = (unsigned)list->size;

   if (idx >= list->capacity)
      if (!file_list_reserve(list, list->capacity * 2 + 1))
         return 0;

   list->list[idx].path = ((void*)0);
   list->list[idx].label = ((void*)0);
   list->list[idx].alt = ((void*)0);
   list->list[idx].type = type;
   list->list[idx].directory_ptr = directory_ptr;
   list->list[idx].entry_idx = entry_idx;
   list->list[idx].userdata = ((void*)0);
   list->list[idx].actiondata = ((void*)0);

   if (label)
      list->list[idx].label = strdup(label);
   if (path)
      list->list[idx].path = strdup(path);

   list->size++;

   return 1;
}
