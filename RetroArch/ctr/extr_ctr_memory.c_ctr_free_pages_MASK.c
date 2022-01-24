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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MEMOP_FREE ; 
 int MEMPERM_READ ; 
 int MEMPERM_WRITE ; 
 int __stack_bottom ; 
 int __stack_size_extra ; 
 int __stacksize__ ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 void FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int,int,int /*<<< orphan*/ ,int) ; 

void FUNC7(u32 pages)
{
   if(!pages)
      return;

   u32 linear_free_pages = FUNC1() >> 12;

   if((FUNC2() >> 12) > pages + 0x100)
      return FUNC4(pages);

#if 0
   if(linear_free_pages > pages + 0x400)
      return ctr_linear_free_pages(pages);
#endif

   u32 stack_free = FUNC3();
   u32 stack_usage = __stacksize__ > stack_free? __stacksize__ - stack_free: 0;

   stack_free = stack_free > __stack_size_extra ? __stack_size_extra : stack_free;

   u32 stack_free_pages = stack_free >> 12;

   if(linear_free_pages + (stack_free_pages - (stack_usage >> 12)) > pages)
   {
      stack_free_pages -= (stack_usage >> 12);
      stack_free_pages  = stack_free_pages > pages ? pages : stack_free_pages;
      linear_free_pages = pages - stack_free_pages;
   }
   else if(linear_free_pages + stack_free_pages > pages)
      stack_free_pages = pages - linear_free_pages;
   else
      return;

   if(linear_free_pages)
      FUNC4(linear_free_pages);

   if(stack_free_pages)
   {
      u32 tmp;
      FUNC6(&tmp, __stack_bottom,
            0x0,
            stack_free_pages << 12,
            MEMOP_FREE, MEMPERM_READ | MEMPERM_WRITE);
      __stack_bottom     += stack_free_pages << 12;
      __stack_size_extra -= stack_free_pages << 12;
      __stacksize__      -= stack_free_pages << 12;
#if 0
      printf("s:0x%08X-->0x%08X(-0x%08X) \n", stack_free,
            stack_free - (stack_free_pages << 12), stack_free_pages << 12);
      DEBUG_HOLD();
#endif
   }
}