
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {void* scaler_type; void* out_fmt; int in_fmt; int out_height; int out_width; int in_height; int in_width; } ;
struct TYPE_11__ {int streamed; TYPE_7__ scaler_rgb; TYPE_7__ scaler_bgr; } ;
struct TYPE_10__ {int height; int width; } ;
struct TYPE_12__ {TYPE_3__ readback; TYPE_2__ vp; } ;
typedef TYPE_4__ vk_t ;
struct TYPE_9__ {scalar_t__ video_gpu_record; } ;
struct TYPE_13__ {TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;


 int RARCH_ERR (char*) ;
 int SCALER_FMT_ABGR8888 ;
 int SCALER_FMT_ARGB8888 ;
 void* SCALER_FMT_BGR24 ;
 void* SCALER_TYPE_POINT ;
 TYPE_5__* config_get_ptr () ;
 int recording_is_enabled () ;
 int scaler_ctx_gen_filter (TYPE_7__*) ;

__attribute__((used)) static void vulkan_init_readback(vk_t *vk)
{





   settings_t *settings = config_get_ptr();
   bool recording_enabled = recording_is_enabled();
   vk->readback.streamed = settings->bools.video_gpu_record && recording_enabled;

   if (!vk->readback.streamed)
      return;

   vk->readback.scaler_bgr.in_width = vk->vp.width;
   vk->readback.scaler_bgr.in_height = vk->vp.height;
   vk->readback.scaler_bgr.out_width = vk->vp.width;
   vk->readback.scaler_bgr.out_height = vk->vp.height;
   vk->readback.scaler_bgr.in_fmt = SCALER_FMT_ARGB8888;
   vk->readback.scaler_bgr.out_fmt = SCALER_FMT_BGR24;
   vk->readback.scaler_bgr.scaler_type = SCALER_TYPE_POINT;

   vk->readback.scaler_rgb.in_width = vk->vp.width;
   vk->readback.scaler_rgb.in_height = vk->vp.height;
   vk->readback.scaler_rgb.out_width = vk->vp.width;
   vk->readback.scaler_rgb.out_height = vk->vp.height;
   vk->readback.scaler_rgb.in_fmt = SCALER_FMT_ABGR8888;
   vk->readback.scaler_rgb.out_fmt = SCALER_FMT_BGR24;
   vk->readback.scaler_rgb.scaler_type = SCALER_TYPE_POINT;

   if (!scaler_ctx_gen_filter(&vk->readback.scaler_bgr))
   {
      vk->readback.streamed = 0;
      RARCH_ERR("[Vulkan]: Failed to initialize scaler context.\n");
   }

   if (!scaler_ctx_gen_filter(&vk->readback.scaler_rgb))
   {
      vk->readback.streamed = 0;
      RARCH_ERR("[Vulkan]: Failed to initialize scaler context.\n");
   }
}
