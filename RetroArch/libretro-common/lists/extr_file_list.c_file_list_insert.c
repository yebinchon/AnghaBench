
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct item_file {unsigned int type; size_t directory_ptr; size_t entry_idx; int * path; int * label; int * actiondata; int * userdata; int * alt; } ;
struct TYPE_4__ {int size; int capacity; struct item_file* list; } ;
typedef TYPE_1__ file_list_t ;


 scalar_t__ calloc (int,int) ;
 int file_list_reserve (TYPE_1__*,int) ;
 int free (struct item_file*) ;
 int memcpy (struct item_file*,struct item_file*,int) ;
 void* strdup (char const*) ;

bool file_list_insert(file_list_t *list,
      const char *path, const char *label,
      unsigned type, size_t directory_ptr,
      size_t entry_idx,
      size_t idx)
{
   int i;


   if (list->size >= list->capacity)
      if (!file_list_reserve(list, list->capacity * 2 + 1))
         return 0;

   for (i = (unsigned)list->size; i > (int)idx; i--)
   {
      struct item_file *copy = (struct item_file*)
         calloc(1, sizeof(struct item_file));

      memcpy(copy, &list->list[i-1], sizeof(struct item_file));

      memcpy(&list->list[i-1], &list->list[i], sizeof(struct item_file));
      memcpy(&list->list[i], copy, sizeof(struct item_file));

      free(copy);
   }

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
