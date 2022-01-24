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
 void* FUNC0 (struct _reent*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 

void* FUNC2(struct _reent *r, size_t num, size_t size)
{
   void *ptr = FUNC0(r, num*size);

   if(ptr)
      FUNC1(ptr, 0, num*size);

   return ptr;
}