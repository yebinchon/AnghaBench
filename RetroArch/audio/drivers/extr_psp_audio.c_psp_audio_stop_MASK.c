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
struct TYPE_2__ {int running; int /*<<< orphan*/ * worker_thread; } ;
typedef  TYPE_1__ psp_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(void *data)
{
   psp_audio_t* psp = (psp_audio_t*)data;

   if (psp){
      psp->running = false;

      if (!psp->worker_thread)
      return true;

      FUNC0(psp->worker_thread);
      psp->worker_thread = NULL;
   }
   return true;
}