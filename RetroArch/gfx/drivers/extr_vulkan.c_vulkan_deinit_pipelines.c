
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * pipelines; } ;
struct TYPE_8__ {int font; int alpha_blend; } ;
struct TYPE_10__ {TYPE_1__ display; TYPE_3__* context; TYPE_2__ pipelines; } ;
typedef TYPE_4__ vk_t ;
struct TYPE_9__ {int device; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int vkDestroyPipeline (int ,int ,int *) ;
 int vulkan_deinit_pipeline_layout (TYPE_4__*) ;

__attribute__((used)) static void vulkan_deinit_pipelines(vk_t *vk)
{
   unsigned i;

   vulkan_deinit_pipeline_layout(vk);
   vkDestroyPipeline(vk->context->device,
         vk->pipelines.alpha_blend, ((void*)0));
   vkDestroyPipeline(vk->context->device,
         vk->pipelines.font, ((void*)0));

   for (i = 0; i < ARRAY_SIZE(vk->display.pipelines); i++)
      vkDestroyPipeline(vk->context->device,
            vk->display.pipelines[i], ((void*)0));
}
