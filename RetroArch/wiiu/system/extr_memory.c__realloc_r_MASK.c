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
struct _reent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _reent*,void*) ; 
 void* FUNC1 (struct _reent*,size_t) ; 
 size_t FUNC2 (struct _reent*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 

void * FUNC4(struct _reent *r, void *ptr, size_t size)
{
   void *realloc_ptr = NULL;
   if (!ptr)
      return FUNC1(r, size);

   if (FUNC2(r, ptr) >= size)
      return ptr;

   realloc_ptr = FUNC1(r, size);

   if(!realloc_ptr)
      return NULL;

   FUNC3(realloc_ptr, ptr, FUNC2(r, ptr));
   FUNC0(r, ptr);

   return realloc_ptr;
}