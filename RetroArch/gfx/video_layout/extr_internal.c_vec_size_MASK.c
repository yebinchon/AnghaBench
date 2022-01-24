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

/* Variables and functions */
 void* FUNC0 (void*,size_t) ; 

bool FUNC1(void **target, size_t elem_size, int count)
{
   const int seg = 4;

   if (--count % seg == 0)
   {
      void *resized = FUNC0(*target, elem_size * (count + seg));
      if (!resized)
         return false;
      *target = resized;
   }

   return true;
}