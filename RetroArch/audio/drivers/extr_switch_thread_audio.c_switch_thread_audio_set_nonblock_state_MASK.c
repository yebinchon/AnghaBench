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
struct TYPE_2__ {int nonblocking; } ;
typedef  TYPE_1__ switch_thread_audio_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(void *data, bool state)
{
   switch_thread_audio_t *swa = (switch_thread_audio_t *)data;

   if (swa)
      swa->nonblocking = state;
}