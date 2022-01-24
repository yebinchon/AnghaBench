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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ qtrue ; 
 scalar_t__ signalcaught ; 

__attribute__((used)) static void FUNC3(int sig) // bk010104 - replace this... (NOTE TTimo huh?)
{
  if (signalcaught)
  {
    FUNC2("DOUBLE SIGNAL FAULT: Received signal %d, exiting...\n", sig);
    FUNC1(1); // bk010104 - abstraction
  }

  signalcaught = qtrue;
  FUNC2("Received signal %d, exiting...\n", sig);
#ifndef DEDICATED
  FUNC0(); // bk010104 - shouldn't this be CL_Shutdown
#endif
  FUNC1(0); // bk010104 - abstraction NOTE TTimo send a 0 to avoid DOUBLE SIGNAL FAULT
}