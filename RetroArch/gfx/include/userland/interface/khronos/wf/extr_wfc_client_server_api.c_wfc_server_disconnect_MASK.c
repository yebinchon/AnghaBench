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
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(void)
{
   FUNC0("%s: called", VCOS_FUNCTION);

   if (FUNC2())
   {
      FUNC1(VCOS_LOG_CATEGORY);
   }
}