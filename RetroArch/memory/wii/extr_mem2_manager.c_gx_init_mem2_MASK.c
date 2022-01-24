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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,scalar_t__,int) ; 
 int /*<<< orphan*/  gx_mem2_heap ; 

bool FUNC7(void)
{
   void *heap_ptr;
   uint32_t level, size;
   FUNC4(level);

   /* BIG NOTE: MEM2 on the Wii is 64MB, but a portion
    * of that is reserved for IOS.
    *
    * libogc by default defines the "safe" area for MEM2
    * to go from 0x90002000 to 0x933E0000.
    *
    * However, from my testing, I've found I need to
    * reserve about 256KB for stuff like network and USB to work correctly.
    * However, other sources says these functions need at least 0xE0000 bytes,
    * 7/8 of a megabyte, of reserved memory to do this. My initial testing
    * shows that we can work with only 128KB, but we use 256KB becuse testing
    * has shown some stuff being iffy with only 128KB, mainly Wiimote stuff.
    * If some stuff mysteriously stops working, try fiddling with this size.
    */
   size = FUNC2() - 1024 * 256;

   heap_ptr = (void *) FUNC0(((uint32_t) FUNC1() - size));

   FUNC3(heap_ptr);
   FUNC6(&gx_mem2_heap, heap_ptr, size, 32);
   FUNC5(level);

   return true;
}