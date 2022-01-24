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
typedef  int /*<<< orphan*/  xenon_audio_t ;

/* Variables and functions */
 unsigned int SOUND_FREQUENCY ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void *FUNC2(const char *device,
      unsigned rate, unsigned latency,
      unsigned block_frames,
      unsigned *new_rate)
{
   static bool inited = false;

   if (!inited)
   {
      FUNC1();
      inited = true;
   }

   *new_rate = SOUND_FREQUENCY;

   return FUNC0(1, sizeof(xenon_audio_t));
}