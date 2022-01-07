
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ctx_data; TYPE_1__* ctx_driver; } ;
typedef TYPE_3__ vg_t ;
struct TYPE_7__ {scalar_t__ video_adaptive_vsync; } ;
struct TYPE_9__ {TYPE_2__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_6__ {int (* swap_interval ) (int ,int) ;} ;


 int GFX_CTX_FLAGS_ADAPTIVE_VSYNC ;
 TYPE_4__* config_get_ptr () ;
 int stub1 (int ,int) ;
 scalar_t__ video_driver_test_all_flags (int ) ;

__attribute__((used)) static void vg_set_nonblock_state(void *data, bool state)
{
   vg_t *vg = (vg_t*)data;
   int interval = state ? 0 : 1;

   if (vg->ctx_driver && vg->ctx_driver->swap_interval)
   {
      settings_t *settings = config_get_ptr();
      bool adaptive_vsync_enabled = video_driver_test_all_flags(
            GFX_CTX_FLAGS_ADAPTIVE_VSYNC) && settings->bools.video_adaptive_vsync;
      if (adaptive_vsync_enabled && interval == 1)
         interval = -1;
      vg->ctx_driver->swap_interval(vg->ctx_data, interval);
   }
}
