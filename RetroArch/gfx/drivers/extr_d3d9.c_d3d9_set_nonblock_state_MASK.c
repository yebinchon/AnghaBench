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
struct TYPE_4__ {int vsync; } ;
struct TYPE_5__ {int needs_restore; int /*<<< orphan*/  dev; TYPE_1__ video_info; } ;
typedef  TYPE_2__ d3d9_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  D3D9_PRESENTATIONINTERVAL ; 
 int /*<<< orphan*/  D3DPRESENT_INTERVAL_IMMEDIATE ; 
 int /*<<< orphan*/  D3DPRESENT_INTERVAL_ONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data, bool state)
{
   int interval                 = 0;
   d3d9_video_t            *d3d = (d3d9_video_t*)data;

   if (!d3d)
      return;

   if (!state)
      interval           = 1;

   d3d->video_info.vsync = !state;

   (void)interval;

#ifdef _XBOX
   d3d9_set_render_state(d3d->dev,
         D3D9_PRESENTATIONINTERVAL,
         interval ?
         D3DPRESENT_INTERVAL_ONE : D3DPRESENT_INTERVAL_IMMEDIATE
         );
#else
   d3d->needs_restore = true;
   FUNC0(d3d);
#endif
}