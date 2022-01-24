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
struct TYPE_2__ {scalar_t__ running; } ;
typedef  TYPE_1__ ps2_audio_t ;

/* Variables and functions */
 size_t AUDIO_BUFFER ; 

__attribute__((used)) static size_t FUNC0(void *data)
{
   ps2_audio_t* ps2 = (ps2_audio_t*)data;

   if (ps2 && ps2->running)
      return AUDIO_BUFFER;

   return 0;
}