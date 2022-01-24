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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ ctx; } ;
typedef  int MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* play_info ; 
 int play_info_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(int signum)
{
   static MMAL_BOOL_T stopped_already = 0;
   int i;
   FUNC1(signum);

   if (stopped_already)
   {
      FUNC0("Killing program");
      FUNC2(255);
   }
   stopped_already = 1;

   FUNC0("BYE");
   for (i = 0; i < play_info_count; i++)
   {
      FUNC4(&play_info[i].lock);
      if (play_info[i].ctx)
         FUNC3(play_info[i].ctx);
      FUNC5(&play_info[i].lock);
   }
}