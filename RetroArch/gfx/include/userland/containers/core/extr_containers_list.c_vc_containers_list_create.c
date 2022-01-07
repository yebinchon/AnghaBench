
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {size_t capacity; size_t entry_size; int comparator; scalar_t__ size; scalar_t__ entries; } ;
typedef TYPE_1__ VC_CONTAINERS_LIST_T ;
typedef int VC_CONTAINERS_LIST_COMPARATOR_T ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (size_t) ;

VC_CONTAINERS_LIST_T *vc_containers_list_create(uint32_t capacity,
      size_t entry_size,
      VC_CONTAINERS_LIST_COMPARATOR_T comparator)
{
   VC_CONTAINERS_LIST_T *list;

   list = (VC_CONTAINERS_LIST_T *)malloc(sizeof(VC_CONTAINERS_LIST_T));
   if (!list)
      return ((void*)0);


   if (!capacity) capacity = 1;

   list->entries = malloc(capacity * entry_size);
   if (!list->entries)
   {
      free(list);
      return ((void*)0);
   }

   list->size = 0;
   list->capacity = capacity;
   list->entry_size = entry_size;
   list->comparator = comparator;

   return list;
}
