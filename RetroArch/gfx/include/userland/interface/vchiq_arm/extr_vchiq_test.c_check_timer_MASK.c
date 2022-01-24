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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
   uint32_t start = FUNC1();
   uint32_t sleep_time = 1000;

   FUNC0("0\n");

   while (1)
   {
      uint32_t now;
      FUNC2(sleep_time);
      now = FUNC1();
      FUNC0("%d - sleep %d\n", now - start, sleep_time);
   }
}