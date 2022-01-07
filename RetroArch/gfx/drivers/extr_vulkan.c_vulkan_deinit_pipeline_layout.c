
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int set_layout; int layout; } ;
struct TYPE_7__ {TYPE_2__ pipelines; TYPE_1__* context; } ;
typedef TYPE_3__ vk_t ;
struct TYPE_5__ {int device; } ;


 int vkDestroyDescriptorSetLayout (int ,int ,int *) ;
 int vkDestroyPipelineLayout (int ,int ,int *) ;

__attribute__((used)) static void vulkan_deinit_pipeline_layout(vk_t *vk)
{
   vkDestroyPipelineLayout(vk->context->device,
         vk->pipelines.layout, ((void*)0));
   vkDestroyDescriptorSetLayout(vk->context->device,
         vk->pipelines.set_layout, ((void*)0));
}
