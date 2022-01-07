
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {unsigned int num_swapchain_images; TYPE_5__* swapchain; TYPE_3__* context; int render_pass; } ;
typedef TYPE_6__ vk_t ;
struct TYPE_14__ {int a; int b; int g; int r; } ;
struct TYPE_13__ {int levelCount; int layerCount; int aspectMask; scalar_t__ baseArrayLayer; scalar_t__ baseMipLevel; } ;
struct TYPE_19__ {scalar_t__ image; TYPE_2__ components; TYPE_1__ subresourceRange; int format; int viewType; int member_0; } ;
typedef TYPE_7__ VkImageViewCreateInfo ;
struct TYPE_20__ {int attachmentCount; int layers; int height; int width; scalar_t__* pAttachments; int renderPass; int member_0; } ;
typedef TYPE_8__ VkFramebufferCreateInfo ;
struct TYPE_16__ {scalar_t__ image; scalar_t__ framebuffer; scalar_t__ view; } ;
struct TYPE_17__ {TYPE_4__ backbuffer; } ;
struct TYPE_15__ {scalar_t__* swapchain_images; int device; int swapchain_height; int swapchain_width; int swapchain_format; } ;


 int VK_COMPONENT_SWIZZLE_A ;
 int VK_COMPONENT_SWIZZLE_B ;
 int VK_COMPONENT_SWIZZLE_G ;
 int VK_COMPONENT_SWIZZLE_R ;
 int VK_IMAGE_ASPECT_COLOR_BIT ;
 int VK_IMAGE_VIEW_TYPE_2D ;
 scalar_t__ VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO ;
 int VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO ;
 int vkCreateFramebuffer (int ,TYPE_8__*,int *,scalar_t__*) ;
 int vkCreateImageView (int ,TYPE_7__*,int *,scalar_t__*) ;
 int vulkan_init_render_pass (TYPE_6__*) ;

__attribute__((used)) static void vulkan_init_framebuffers(
      vk_t *vk)
{
   unsigned i;

   vulkan_init_render_pass(vk);

   for (i = 0; i < vk->num_swapchain_images; i++)
   {
      VkImageViewCreateInfo view =
      { VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO };
      VkFramebufferCreateInfo info =
      { VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO };

      vk->swapchain[i].backbuffer.image = vk->context->swapchain_images[i];

      if (vk->context->swapchain_images[i] == VK_NULL_HANDLE)
      {
         vk->swapchain[i].backbuffer.view = VK_NULL_HANDLE;
         vk->swapchain[i].backbuffer.framebuffer = VK_NULL_HANDLE;
         continue;
      }


      view.viewType = VK_IMAGE_VIEW_TYPE_2D;
      view.format = vk->context->swapchain_format;
      view.image = vk->swapchain[i].backbuffer.image;
      view.subresourceRange.baseMipLevel = 0;
      view.subresourceRange.baseArrayLayer = 0;
      view.subresourceRange.levelCount = 1;
      view.subresourceRange.layerCount = 1;
      view.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
      view.components.r = VK_COMPONENT_SWIZZLE_R;
      view.components.g = VK_COMPONENT_SWIZZLE_G;
      view.components.b = VK_COMPONENT_SWIZZLE_B;
      view.components.a = VK_COMPONENT_SWIZZLE_A;

      vkCreateImageView(vk->context->device,
            &view, ((void*)0), &vk->swapchain[i].backbuffer.view);


      info.renderPass = vk->render_pass;
      info.attachmentCount = 1;
      info.pAttachments = &vk->swapchain[i].backbuffer.view;
      info.width = vk->context->swapchain_width;
      info.height = vk->context->swapchain_height;
      info.layers = 1;

      vkCreateFramebuffer(vk->context->device,
            &info, ((void*)0), &vk->swapchain[i].backbuffer.framebuffer);
   }
}
