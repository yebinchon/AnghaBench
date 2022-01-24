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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int stop ; 
 int stopped_already ; 

__attribute__((used)) static void FUNC2(int signum)
{
   (void)signum;

   if (stopped_already)
   {
      FUNC0("Killing program");
      FUNC1(255);
   }
   else
   {
      FUNC0("Stopping normally. CTRL+C again to kill program");
      stop = 1;
      stopped_already = 1;
   }
}