
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int capacity; size_t entry_size; int size; void* entries; } ;
typedef TYPE_1__ VC_CONTAINERS_LIST_T ;


 int memcpy (char*,void*,size_t) ;
 int memmove (char*,char*,size_t) ;
 void* realloc (void*,int) ;
 int vc_containers_list_find_index (TYPE_1__*,void*,size_t*) ;

bool vc_containers_list_insert(VC_CONTAINERS_LIST_T *list,
      void *new_entry,
      bool allow_duplicates)
{
   uint32_t insert_idx;
   char *insert_ptr;
   size_t entry_size;
   bool match;

   if (!list || !list->capacity) return 0;

   entry_size = list->entry_size;
   match = vc_containers_list_find_index(list, new_entry, &insert_idx);
   insert_ptr = (char *)list->entries + entry_size * insert_idx;

   if (!match || allow_duplicates)
   {

      if (list->size == list->capacity)
      {
         void *new_entries = realloc(list->entries, (list->size + 1) * entry_size);

         if (!new_entries)
            return 0;
         list->entries = new_entries;
         list->capacity++;
      }


      if (insert_idx < list->size)
         memmove(insert_ptr + entry_size, insert_ptr, (list->size - insert_idx) * entry_size);

      list->size++;
   }


   memcpy(insert_ptr, new_entry, list->entry_size);

   return 1;
}
