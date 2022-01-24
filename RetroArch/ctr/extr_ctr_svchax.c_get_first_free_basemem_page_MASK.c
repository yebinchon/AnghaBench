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
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  MEMREGION_BASE ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(bool isNew3DS)
{
   s64 v1;
   int memused_base;
   int memused_base_linear;  // guessed

   memused_base = FUNC2(MEMREGION_BASE);

   FUNC3(&v1, 2, 0);
   memused_base_linear = 0x6C000 + v1 +
                         (FUNC1() > FUNC0(2, 49, 0) ? (isNew3DS ? 0x2000 : 0x1000) : 0x0);

   return (FUNC1() > FUNC0(2, 40, 0) ? 0xE0000000 : 0xF0000000) // kernel FCRAM mapping
          + (isNew3DS ? 0x10000000 : 0x08000000)  // FCRAM size
          - (memused_base - memused_base_linear)  // memory usage for pages allocated without the MEMOP_LINEAR flag
          - 0x1000;  // skip to the start addr of the next free page

}