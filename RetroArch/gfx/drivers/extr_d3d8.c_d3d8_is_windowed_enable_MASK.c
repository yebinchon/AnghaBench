#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int video_windowed_fullscreen; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 

__attribute__((used)) static bool FUNC1(bool info_fullscreen)
{
#ifndef _XBOX
   settings_t *settings = FUNC0();
   if (!info_fullscreen)
      return true;
   if (settings)
      return settings->bools.video_windowed_fullscreen;
#endif
   return false;
}