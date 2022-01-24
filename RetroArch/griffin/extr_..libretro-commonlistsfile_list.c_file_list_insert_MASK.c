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
struct item_file {unsigned int type; size_t directory_ptr; size_t entry_idx; int /*<<< orphan*/ * path; int /*<<< orphan*/ * label; int /*<<< orphan*/ * actiondata; int /*<<< orphan*/ * userdata; int /*<<< orphan*/ * alt; } ;
struct TYPE_4__ {int size; int capacity; struct item_file* list; } ;
typedef  TYPE_1__ file_list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct item_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct item_file*,struct item_file*,int) ; 
 void* FUNC4 (char const*) ; 

bool FUNC5(file_list_t *list,
      const char *path, const char *label,
      unsigned type, size_t directory_ptr,
      size_t entry_idx,
      size_t idx)
{
   int i;

   /* Expand file list if needed */
   if (list->size >= list->capacity)
      if (!FUNC1(list, list->capacity * 2 + 1))
         return false;

   for (i = (unsigned)list->size; i > (int)idx; i--)
   {
      struct item_file *copy = (struct item_file*)
         FUNC0(1, sizeof(struct item_file));

      FUNC3(copy, &list->list[i-1], sizeof(struct item_file));

      FUNC3(&list->list[i-1], &list->list[i], sizeof(struct item_file));
      FUNC3(&list->list[i],             copy, sizeof(struct item_file));

      FUNC2(copy);
   }

   list->list[idx].path          = NULL;
   list->list[idx].label         = NULL;
   list->list[idx].alt           = NULL;
   list->list[idx].type          = type;
   list->list[idx].directory_ptr = directory_ptr;
   list->list[idx].entry_idx     = entry_idx;
   list->list[idx].userdata      = NULL;
   list->list[idx].actiondata    = NULL;

   if (label)
      list->list[idx].label      = FUNC4(label);
   if (path)
      list->list[idx].path       = FUNC4(path);

   list->size++;

   return true;
}