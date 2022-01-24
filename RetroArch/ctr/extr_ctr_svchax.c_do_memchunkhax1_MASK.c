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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ THREAD_PAGE_ACL_OFFSET ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
   u32 saved_vram_value = *(u32*)0x1F000008;

   // 0x1F000000 contains the enable bit for svc 0x7B
   FUNC2(FUNC1() + THREAD_PAGE_ACL_OFFSET + FUNC0(0x7B), 0x1F000000);

   FUNC3(0x1F000008, saved_vram_value);
}