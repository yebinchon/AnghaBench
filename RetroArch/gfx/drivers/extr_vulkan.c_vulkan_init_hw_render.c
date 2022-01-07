
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct retro_hw_render_interface_vulkan {int get_instance_proc_addr; int get_device_proc_addr; int set_signal_semaphore; int unlock_queue; int lock_queue; int set_command_buffers; int wait_sync_index; int get_sync_index_mask; int get_sync_index; int set_image; TYPE_3__* handle; int queue_index; int queue; int device; int gpu; int instance; int interface_version; int interface_type; } ;
struct TYPE_5__ {int enable; struct retro_hw_render_interface_vulkan iface; } ;
struct TYPE_7__ {TYPE_2__* context; TYPE_1__ hw; } ;
typedef TYPE_3__ vk_t ;
struct retro_hw_render_callback {scalar_t__ context_type; } ;
struct TYPE_6__ {int graphics_queue_index; int queue; int device; int gpu; int instance; } ;


 scalar_t__ RETRO_HW_CONTEXT_VULKAN ;
 int RETRO_HW_RENDER_INTERFACE_VULKAN ;
 int RETRO_HW_RENDER_INTERFACE_VULKAN_VERSION ;
 struct retro_hw_render_callback* video_driver_get_hw_context () ;
 int vkGetDeviceProcAddr ;
 int vulkan_get_sync_index ;
 int vulkan_get_sync_index_mask ;
 int vulkan_lock_queue ;
 int vulkan_set_command_buffers ;
 int vulkan_set_image ;
 int vulkan_set_signal_semaphore ;
 int vulkan_symbol_wrapper_instance_proc_addr () ;
 int vulkan_unlock_queue ;
 int vulkan_wait_sync_index ;

__attribute__((used)) static void vulkan_init_hw_render(vk_t *vk)
{
   struct retro_hw_render_interface_vulkan *iface =
      &vk->hw.iface;
   struct retro_hw_render_callback *hwr =
      video_driver_get_hw_context();

   if (hwr->context_type != RETRO_HW_CONTEXT_VULKAN)
      return;

   vk->hw.enable = 1;

   iface->interface_type = RETRO_HW_RENDER_INTERFACE_VULKAN;
   iface->interface_version = RETRO_HW_RENDER_INTERFACE_VULKAN_VERSION;
   iface->instance = vk->context->instance;
   iface->gpu = vk->context->gpu;
   iface->device = vk->context->device;

   iface->queue = vk->context->queue;
   iface->queue_index = vk->context->graphics_queue_index;

   iface->handle = vk;
   iface->set_image = vulkan_set_image;
   iface->get_sync_index = vulkan_get_sync_index;
   iface->get_sync_index_mask = vulkan_get_sync_index_mask;
   iface->wait_sync_index = vulkan_wait_sync_index;
   iface->set_command_buffers = vulkan_set_command_buffers;
   iface->lock_queue = vulkan_lock_queue;
   iface->unlock_queue = vulkan_unlock_queue;
   iface->set_signal_semaphore = vulkan_set_signal_semaphore;

   iface->get_device_proc_addr = vkGetDeviceProcAddr;
   iface->get_instance_proc_addr = vulkan_symbol_wrapper_instance_proc_addr();
}
