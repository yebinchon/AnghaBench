
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int * xcb_window_t ;
typedef int surf_info ;
struct wl_surface {int dummy; } ;
struct wl_display {int dummy; } ;
struct vulkan_display_surface_info {int dummy; } ;
struct TYPE_26__ {int instance; } ;
struct TYPE_27__ {scalar_t__ vk_surface; TYPE_1__ context; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;
typedef enum vulkan_wsi_type { ____Placeholder_vulkan_wsi_type } vulkan_wsi_type ;
typedef int * Window ;
struct TYPE_28__ {void* pView; int flags; int * pNext; int sType; void* mirSurface; void* connection; int * window; int * dpy; int hwnd; int hinstance; struct wl_surface* surface; struct wl_display* display; } ;
typedef TYPE_3__ VkXlibSurfaceCreateInfoKHR ;
typedef TYPE_3__ VkXcbSurfaceCreateInfoKHR ;
typedef TYPE_3__ VkWin32SurfaceCreateInfoKHR ;
typedef TYPE_3__ VkWaylandSurfaceCreateInfoKHR ;
typedef TYPE_3__ VkMirSurfaceCreateInfoKHR ;
typedef TYPE_3__ VkMacOSSurfaceCreateInfoMVK ;
typedef TYPE_3__ VkIOSSurfaceCreateInfoMVK ;
typedef TYPE_3__ VkAndroidSurfaceCreateInfoKHR ;
typedef int (* PFN_vkCreateXlibSurfaceKHR ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateXcbSurfaceKHR ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateWin32SurfaceKHR ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateWaylandSurfaceKHR ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateMirSurfaceKHR ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateMacOSSurfaceMVK ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateIOSSurfaceMVK ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int (* PFN_vkCreateAndroidSurfaceKHR ) (int ,TYPE_3__*,int *,scalar_t__*) ;
typedef int HWND ;
typedef int HINSTANCE ;
typedef int Display ;
typedef int ANativeWindow ;


 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,unsigned long long) ;
 int VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR ;
 int VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK ;
 int VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK ;
 int VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR ;
 int VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR ;
 int VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR ;
 int VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR ;
 int VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR ;
 int VK_SUCCESS ;
 int VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_SYMBOL (int ,char*,int (*) (int ,TYPE_3__*,int *,scalar_t__*)) ;
 void* XGetXCBConnection (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int vulkan_acquire_next_image (TYPE_2__*) ;
 int vulkan_context_init_device (TYPE_2__*) ;
 int vulkan_create_display_surface (TYPE_2__*,unsigned int*,unsigned int*,struct vulkan_display_surface_info const*) ;
 int vulkan_create_swapchain (TYPE_2__*,unsigned int,unsigned int,unsigned int) ;

bool vulkan_surface_create(gfx_ctx_vulkan_data_t *vk,
      enum vulkan_wsi_type type,
      void *display, void *surface,
      unsigned width, unsigned height,
      unsigned swap_interval)
{
   switch (type)
   {
      case 131:
         break;
      case 137:
         break;
      case 130:
         break;
      case 128:
         break;
      case 129:
         break;
      case 135:
         break;
      case 136:
         {
            if (!vulkan_create_display_surface(vk,
                     &width, &height,
                     (const struct vulkan_display_surface_info*)display))
               return 0;
         }
         break;
      case 133:
         break;
      case 134:
         break;
      case 132:
      default:
         return 0;
   }


   if (!vulkan_context_init_device(vk))
      return 0;

   if (!vulkan_create_swapchain(
            vk, width, height, swap_interval))
      return 0;

   vulkan_acquire_next_image(vk);
   return 1;
}
