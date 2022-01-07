
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ video_adaptive_vsync; } ;
struct TYPE_8__ {int video_swap_interval; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_12__ {int ctx_data; TYPE_3__* ctx_driver; } ;
typedef TYPE_5__ gl1_t ;
struct TYPE_10__ {int (* swap_interval ) (int ,int) ;} ;


 int GFX_CTX_FLAGS_ADAPTIVE_VSYNC ;
 int RARCH_LOG (char*,char*) ;
 TYPE_4__* config_get_ptr () ;
 int gl1_context_bind_hw_render (TYPE_5__*,int) ;
 int stub1 (int ,int) ;
 scalar_t__ video_driver_test_all_flags (int ) ;

__attribute__((used)) static void gl1_gfx_set_nonblock_state(void *data, bool state)
{
   int interval = 0;
   gl1_t *gl1 = (gl1_t*)data;
   settings_t *settings = config_get_ptr();

   if (!gl1)
      return;

   RARCH_LOG("[GL1]: VSync => %s\n", state ? "off" : "on");

   gl1_context_bind_hw_render(gl1, 0);

   if (!state)
      interval = settings->uints.video_swap_interval;

   if (gl1->ctx_driver->swap_interval)
   {
      bool adaptive_vsync_enabled = video_driver_test_all_flags(
            GFX_CTX_FLAGS_ADAPTIVE_VSYNC) && settings->bools.video_adaptive_vsync;
      if (adaptive_vsync_enabled && interval == 1)
         interval = -1;
      gl1->ctx_driver->swap_interval(gl1->ctx_data, interval);
   }
   gl1_context_bind_hw_render(gl1, 1);
}
