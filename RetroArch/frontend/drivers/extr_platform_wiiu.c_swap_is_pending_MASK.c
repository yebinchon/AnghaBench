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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ OSTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static bool FUNC1(void *start_time)
{
   uint32_t swap_count, flip_count;
   OSTime last_flip, last_vsync;

   FUNC0(&swap_count, &flip_count, &last_flip, &last_vsync);
   return last_vsync < *(OSTime *)start_time;
}