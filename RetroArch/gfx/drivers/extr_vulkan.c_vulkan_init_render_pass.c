
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int render_pass; TYPE_1__* context; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_11__ {int colorAttachmentCount; TYPE_5__* pColorAttachments; int pipelineBindPoint; int member_0; } ;
typedef TYPE_3__ VkSubpassDescription ;
struct TYPE_12__ {int attachmentCount; int subpassCount; TYPE_3__* pSubpasses; TYPE_6__* pAttachments; int member_0; } ;
typedef TYPE_4__ VkRenderPassCreateInfo ;
struct TYPE_13__ {void* member_1; int member_0; } ;
typedef TYPE_5__ VkAttachmentReference ;
struct TYPE_14__ {void* finalLayout; void* initialLayout; int stencilStoreOp; int stencilLoadOp; int storeOp; int loadOp; int samples; int format; int member_0; } ;
typedef TYPE_6__ VkAttachmentDescription ;
struct TYPE_9__ {int device; int swapchain_format; } ;


 int VK_ATTACHMENT_LOAD_OP_CLEAR ;
 int VK_ATTACHMENT_LOAD_OP_DONT_CARE ;
 int VK_ATTACHMENT_STORE_OP_DONT_CARE ;
 int VK_ATTACHMENT_STORE_OP_STORE ;
 void* VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL ;
 int VK_PIPELINE_BIND_POINT_GRAPHICS ;
 int VK_SAMPLE_COUNT_1_BIT ;
 int VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO ;
 int vkCreateRenderPass (int ,TYPE_4__*,int *,int *) ;

__attribute__((used)) static void vulkan_init_render_pass(
      vk_t *vk)
{
   VkRenderPassCreateInfo rp_info = {
      VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO };
   VkAttachmentDescription attachment = {0};
   VkSubpassDescription subpass = {0};
   VkAttachmentReference color_ref = { 0,
      VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL };


   attachment.format = vk->context->swapchain_format;

   attachment.samples = VK_SAMPLE_COUNT_1_BIT;

   attachment.loadOp = VK_ATTACHMENT_LOAD_OP_CLEAR;

   attachment.storeOp = VK_ATTACHMENT_STORE_OP_STORE;

   attachment.stencilLoadOp = VK_ATTACHMENT_LOAD_OP_DONT_CARE;
   attachment.stencilStoreOp = VK_ATTACHMENT_STORE_OP_DONT_CARE;



   attachment.initialLayout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;
   attachment.finalLayout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;



   subpass.pipelineBindPoint = VK_PIPELINE_BIND_POINT_GRAPHICS;
   subpass.colorAttachmentCount = 1;
   subpass.pColorAttachments = &color_ref;


   rp_info.attachmentCount = 1;
   rp_info.pAttachments = &attachment;
   rp_info.subpassCount = 1;
   rp_info.pSubpasses = &subpass;

   vkCreateRenderPass(vk->context->device,
         &rp_info, ((void*)0), &vk->render_pass);
}
