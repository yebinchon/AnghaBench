
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {size_t entry_size; int (* comparator ) (void const*,char const*) ;int size; scalar_t__ entries; } ;
typedef TYPE_1__ VC_CONTAINERS_LIST_T ;
typedef int (* VC_CONTAINERS_LIST_COMPARATOR_T ) (void const*,char const*) ;



__attribute__((used)) static bool vc_containers_list_find_index(const VC_CONTAINERS_LIST_T *list,
      const void *entry,
      uint32_t *index)
{
   const char *entries = (const char *)list->entries;
   size_t entry_size = list->entry_size;
   VC_CONTAINERS_LIST_COMPARATOR_T comparator = list->comparator;
   uint32_t start = 0, end = list->size;
   uint32_t mid = end >> 1;
   bool match = 0;

   while (mid < end)
   {
      int comparison = comparator(entry, entries + mid * entry_size);

      if (comparison < 0)
         end = mid;
      else if (comparison > 0)
         start = mid + 1;
      else {
         match = 1;
         break;
      }

      mid = (start + end) >> 1;
   }

   if (index) *index = mid;
   return match;
}
