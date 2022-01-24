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
typedef  int uint32_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 size_t FUNC3 (void*) ; 
 void* FUNC4 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 
 void* FUNC7 (void*,size_t) ; 
 int /*<<< orphan*/  gx_mem2_heap ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,size_t) ; 

__attribute__ ((used)) void *FUNC9(void *p, size_t size)
{
   void *n;
   /* ptr from mem2 */
   if (((uint32_t) p & 0x10000000) != 0)
   {
      n = FUNC7(p, size);
      if (n != 0)
         return n;
      n = FUNC2(size);
      if (n == 0)
         return 0;
      if (p != 0)
      {
         size_t heap_size = FUNC0(&gx_mem2_heap, p);
         FUNC8(n, p, heap_size < size ? heap_size : size);
         FUNC5(p);
      }
      return n;
   }
   /* ptr from malloc */
   n = FUNC4(p, size);
   if (n != 0)
      return n;
   n = FUNC6(size);
   if (n == 0)
      return 0;
   if (p != 0)
   {
      size_t heap_size = FUNC3(p);
      FUNC8(n, p, heap_size < size ? heap_size : size);
      FUNC1(p);
   }
   return n;
}