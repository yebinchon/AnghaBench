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
struct TYPE_2__ {int started; int /*<<< orphan*/  audio_port; } ;
typedef  TYPE_1__ ps3_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(void *data, bool is_shutdown)
{
   ps3_audio_t *aud = data;
   if (!aud->started)
   {
      FUNC0(aud->audio_port);
      aud->started = true;
   }
   return true;
}