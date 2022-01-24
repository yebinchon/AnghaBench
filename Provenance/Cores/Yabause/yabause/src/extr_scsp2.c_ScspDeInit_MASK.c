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
struct TYPE_2__ {int /*<<< orphan*/  (* DeInit ) () ;} ;

/* Variables and functions */
 TYPE_1__* SNDCore ; 
 int /*<<< orphan*/ * SoundRam ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  YAB_THREAD_SCSP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ scsp_thread_running ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
   if (scsp_thread_running)
   {
      scsp_thread_running = 0;  // Tell the subthread to stop
      FUNC2(YAB_THREAD_SCSP);
      FUNC1(YAB_THREAD_SCSP);
   }

   if (SNDCore)
      SNDCore->DeInit();
   SNDCore = NULL;

   if (SoundRam)
      FUNC0(SoundRam);
   SoundRam = NULL;
}