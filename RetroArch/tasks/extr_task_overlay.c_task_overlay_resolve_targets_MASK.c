#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct overlay_desc {char* next_index_name; unsigned int next_index; } ;
struct overlay {unsigned int size; int /*<<< orphan*/ * descs; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (struct overlay*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC3(struct overlay *ol,
      size_t idx, size_t size)
{
   unsigned i;
   struct overlay *current = (struct overlay*)&ol[idx];

   for (i = 0; i < current->size; i++)
   {
      struct overlay_desc *desc = (struct overlay_desc*)&current->descs[i];
      const char *next          = desc->next_index_name;
      ssize_t         next_idx  = (idx + 1) & size;

      if (!FUNC1(next))
      {
         next_idx = FUNC2(ol, next, size);

         if (next_idx < 0)
         {
            FUNC0("[Overlay]: Couldn't find overlay called: \"%s\".\n",
                  next);
            return false;
         }
      }

      desc->next_index = (unsigned)next_idx;
   }

   return true;
}