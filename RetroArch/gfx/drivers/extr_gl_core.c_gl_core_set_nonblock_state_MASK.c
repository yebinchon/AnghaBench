#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ video_adaptive_vsync; } ;
struct TYPE_8__ {int video_swap_interval; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_12__ {int /*<<< orphan*/  ctx_data; TYPE_3__* ctx_driver; } ;
typedef  TYPE_5__ gl_core_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* swap_interval ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_CTX_FLAGS_ADAPTIVE_VSYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, bool state)
{
   int interval                = 0;
   gl_core_t         *gl       = (gl_core_t*)data;
   settings_t        *settings = FUNC1();

   if (!gl)
      return;

   FUNC0("[GLCore]: VSync => %s\n", state ? "off" : "on");

   FUNC2(gl, false);
   if (!state)
      interval = settings->uints.video_swap_interval;

   if (gl->ctx_driver->swap_interval)
   {
      bool adaptive_vsync_enabled            = FUNC4(
            GFX_CTX_FLAGS_ADAPTIVE_VSYNC) && settings->bools.
         video_adaptive_vsync;
      if (adaptive_vsync_enabled && interval == 1)
         interval = -1;
      gl->ctx_driver->swap_interval(gl->ctx_data, interval);
   }

   FUNC2(gl, true);
}