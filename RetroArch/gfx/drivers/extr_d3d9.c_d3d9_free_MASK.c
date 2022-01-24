#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * dev; struct TYPE_8__* shader_path; struct TYPE_8__* menu; scalar_t__ overlays_size; struct TYPE_8__* overlays; } ;
typedef  TYPE_1__ d3d9_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * g_pD3D9 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void *data)
{
   d3d9_video_t   *d3d = (d3d9_video_t*)data;

   if (!d3d)
      return;

#ifdef HAVE_OVERLAY
   d3d9_free_overlays(d3d);
   if (d3d->overlays)
      free(d3d->overlays);
   d3d->overlays      = NULL;
   d3d->overlays_size = 0;
#endif

   FUNC3(d3d, d3d->menu);
   if (d3d->menu)
      FUNC5(d3d->menu);
   d3d->menu          = NULL;

   FUNC0(d3d);

   if (!FUNC6(d3d->shader_path))
      FUNC5(d3d->shader_path);

   d3d->shader_path = NULL;
   FUNC2(d3d->dev, g_pD3D9);
   d3d->dev         = NULL;
   g_pD3D9          = NULL;

   FUNC1();

#ifndef _XBOX
   FUNC8();
   FUNC7();
#endif
   FUNC5(d3d);
}