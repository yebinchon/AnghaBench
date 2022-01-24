#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_CTL_IS_SRAM_USED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* task_save_files ; 

bool FUNC3(void)
{
   unsigned i;

   FUNC0();
   if (!task_save_files ||
         !FUNC2(RARCH_CTL_IS_SRAM_USED, NULL))
      return false;

   for (i = 0; i < task_save_files->size; i++)
      FUNC1(i);

   return true;
}