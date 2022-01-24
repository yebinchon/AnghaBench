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
typedef  int /*<<< orphan*/  OSTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * swap_is_pending ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
   OSTime start_time;
   int status;

   do
   {
      if(FUNC3(false))
      {
         start_time = FUNC0();
         FUNC2(swap_is_pending, &start_time);
      }
      else
         FUNC2(NULL, NULL);

      status = FUNC1();

      if (status == -1)
         break;
   } while(true);
}