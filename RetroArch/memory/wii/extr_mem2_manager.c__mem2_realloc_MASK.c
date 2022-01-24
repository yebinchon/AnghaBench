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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  gx_mem2_heap ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,scalar_t__) ; 

void *FUNC4(void *ptr, uint32_t newsize)
{
   uint32_t size;
   void *newptr = NULL;

   if (!ptr)
      return FUNC2(newsize);

   if (newsize == 0)
   {
      FUNC1(ptr);
      return NULL;
   }

   size = FUNC0(&gx_mem2_heap, ptr);

   if (size > newsize)
      size = newsize;

   newptr = FUNC2(newsize);

   if (!newptr)
      return NULL;

   FUNC3(newptr, ptr, size);
   FUNC1(ptr);

   return newptr;
}