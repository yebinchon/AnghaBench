#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int capacity; int /*<<< orphan*/  size; TYPE_1__* list; } ;
typedef  TYPE_2__ file_list_t ;
struct TYPE_5__ {unsigned int type; size_t directory_ptr; size_t entry_idx; int /*<<< orphan*/ * path; int /*<<< orphan*/ * label; int /*<<< orphan*/ * actiondata; int /*<<< orphan*/ * userdata; int /*<<< orphan*/ * alt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 void* FUNC1 (char const*) ; 

bool FUNC2(file_list_t *list,
      const char *path, const char *label,
      unsigned type, size_t directory_ptr,
      size_t entry_idx)
{
   unsigned idx = (unsigned)list->size;
   /* Expand file list if needed */
   if (idx >= list->capacity)
      if (!FUNC0(list, list->capacity * 2 + 1))
         return false;

   list->list[idx].path          = NULL;
   list->list[idx].label         = NULL;
   list->list[idx].alt           = NULL;
   list->list[idx].type          = type;
   list->list[idx].directory_ptr = directory_ptr;
   list->list[idx].entry_idx     = entry_idx;
   list->list[idx].userdata      = NULL;
   list->list[idx].actiondata    = NULL;

   if (label)
      list->list[idx].label      = FUNC1(label);
   if (path)
      list->list[idx].path       = FUNC1(path);

   list->size++;

   return true;
}