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
struct TYPE_6__ {size_t size; TYPE_1__* list; } ;
typedef  TYPE_2__ file_list_t ;
struct TYPE_5__ {unsigned int type; } ;

/* Variables and functions */
 unsigned int FILE_TYPE_DIRECTORY ; 
 int FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ scroll_index_size ; 

__attribute__((used)) static void FUNC2(file_list_t *list)
{
   int current;
   bool current_is_dir      = false;
   unsigned type            = 0;
   size_t i                 = 0;

   scroll_index_size        = 0;

   FUNC1(0);

   current                  = FUNC0(list, 0);
   type                     = list->list[0].type;

   if (type == FILE_TYPE_DIRECTORY)
      current_is_dir = true;

   for (i = 1; i < list->size; i++)
   {
      int first    = FUNC0(list, (unsigned)i);
      bool is_dir  = false;
      unsigned idx = (unsigned)i;

      type         = list->list[idx].type;

      if (type == FILE_TYPE_DIRECTORY)
         is_dir = true;

      if ((current_is_dir && !is_dir) || (first > current))
         FUNC1(i);

      current        = first;
      current_is_dir = is_dir;
   }

   FUNC1(list->size - 1);
}