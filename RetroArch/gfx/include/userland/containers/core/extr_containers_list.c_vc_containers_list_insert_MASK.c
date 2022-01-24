#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_4__ {int capacity; size_t entry_size; int size; void* entries; } ;
typedef  TYPE_1__ VC_CONTAINERS_LIST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 void* FUNC2 (void*,int) ; 
 int FUNC3 (TYPE_1__*,void*,size_t*) ; 

bool FUNC4(VC_CONTAINERS_LIST_T *list,
      void *new_entry,
      bool allow_duplicates)
{
   uint32_t insert_idx;
   char *insert_ptr;
   size_t entry_size;
   bool match;

   if (!list || !list->capacity) return false;

   entry_size = list->entry_size;
   match = FUNC3(list, new_entry, &insert_idx);
   insert_ptr = (char *)list->entries + entry_size * insert_idx;

   if (!match || allow_duplicates)
   {
      /* Ensure there is space for the new entry */
      if (list->size == list->capacity)
      {
         void *new_entries = FUNC2(list->entries, (list->size + 1) * entry_size);

         if (!new_entries)
            return false;
         list->entries = new_entries;
         list->capacity++;
      }

      /* Move up anything above the insertion point */
      if (insert_idx < list->size)
         FUNC1(insert_ptr + entry_size, insert_ptr, (list->size - insert_idx) * entry_size);

      list->size++;
   }

   /* Copy in the new entry (overwriting the old one if necessary) */
   FUNC0(insert_ptr, new_entry, list->entry_size);

   return true;
}