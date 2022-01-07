
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* ctx_data; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_7__ {int video_context_driver; } ;
struct TYPE_9__ {TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;
typedef int gfx_ctx_driver_t ;
typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_VULKAN_API ;
 TYPE_3__* config_get_ptr () ;
 int * video_context_driver_init_first (TYPE_2__*,int ,int,unsigned int,unsigned int,int,void**) ;

__attribute__((used)) static const gfx_ctx_driver_t *vulkan_get_context(vk_t *vk)
{
   void *ctx_data = ((void*)0);
   unsigned major = 1;
   unsigned minor = 0;
   settings_t *settings = config_get_ptr();
   enum gfx_ctx_api api = GFX_CTX_VULKAN_API;
   const gfx_ctx_driver_t *gfx_ctx = video_context_driver_init_first(
         vk, settings->arrays.video_context_driver,
         api, major, minor, 0, &ctx_data);

   if (ctx_data)
      vk->ctx_data = ctx_data;

   return gfx_ctx;
}
