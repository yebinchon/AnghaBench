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
struct TYPE_2__ {scalar_t__ written; scalar_t__ pos; int /*<<< orphan*/  mvoice; } ;
typedef  TYPE_1__ ax_audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AX_AUDIO_SAMPLE_LOAD ; 
 int /*<<< orphan*/  AX_VOICE_STATE_PLAYING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool FUNC3(void* data, bool is_shutdown)
{
   ax_audio_t* ax = (ax_audio_t*)data;

   /* Prevents restarting audio when the menu
    * is toggled off on shutdown */
   if (is_shutdown)
      return true;

   /* Set back to playing on enough buffered data */
   if(ax->written > AX_AUDIO_SAMPLE_LOAD)
   {
      FUNC0(ax->mvoice, FUNC2(ax->pos - ax->written));
      FUNC1(ax->mvoice, AX_VOICE_STATE_PLAYING);
   }
   return true;
}