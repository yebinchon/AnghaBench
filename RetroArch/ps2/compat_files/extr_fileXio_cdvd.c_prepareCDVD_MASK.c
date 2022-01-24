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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int SCECdNODISC ; 
 int SCECdPS2DVD ; 
 int SCECdPSCD ; 
 int SCECdUNKNOWN ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
   u64 wait_start;
   int cdmode = FUNC3();

   if (FUNC3() <= SCECdUNKNOWN) {
      wait_start = FUNC0();
      while ((FUNC0() < wait_start + 500) && !FUNC1()) {
         if (cdmode == SCECdNODISC)
            return 0;
      }
      if (cdmode == SCECdNODISC)
         return 0;
      if ((cdmode < SCECdPSCD) || (cdmode > SCECdPS2DVD)) {
         FUNC2();
         return 0;
      }
   }

   return 1;
}