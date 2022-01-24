#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int running; scalar_t__ worker_thread; } ;
typedef  TYPE_1__ psp_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  audioMainLoop ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC1(void *data, bool is_shutdown)
{
   psp_audio_t* psp = (psp_audio_t*)data;

   if(psp && psp->running)
      return true;

   if (!psp->worker_thread)
   {
      psp->running = true;
      psp->worker_thread = FUNC0(audioMainLoop, psp);
   }

   return true;
}