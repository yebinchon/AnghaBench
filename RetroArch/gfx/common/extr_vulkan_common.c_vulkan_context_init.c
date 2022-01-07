
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct retro_hw_render_context_negotiation_interface_vulkan {scalar_t__ interface_type; scalar_t__ interface_version; TYPE_5__* (* get_application_info ) () ;} ;
struct TYPE_14__ {int * instance; int debug_callback; } ;
struct TYPE_15__ {TYPE_1__ context; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;
typedef enum vulkan_wsi_type { ____Placeholder_vulkan_wsi_type } vulkan_wsi_type ;
typedef scalar_t__ VkResult ;
struct TYPE_16__ {unsigned int enabledExtensionCount; char const** ppEnabledExtensionNames; char const** ppEnabledLayerNames; TYPE_5__* pApplicationInfo; int enabledLayerCount; int member_0; } ;
typedef TYPE_3__ VkInstanceCreateInfo ;
struct TYPE_17__ {int flags; int pfnCallback; int member_0; } ;
typedef TYPE_4__ VkDebugReportCallbackCreateInfoEXT ;
struct TYPE_18__ {void* apiVersion; scalar_t__ engineVersion; void* pEngineName; scalar_t__ applicationVersion; void* pApplicationName; int member_0; } ;
typedef TYPE_5__ VkApplicationInfo ;
typedef scalar_t__ PFN_vkGetInstanceProcAddr ;


 int ARRAY_SIZE (char const**) ;
 int MSG_PROGRAM ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,...) ;
 int RARCH_WARN (char*) ;
 scalar_t__ RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN ;
 scalar_t__ RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN_VERSION ;
 int VK_DEBUG_REPORT_ERROR_BIT_EXT ;
 int VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT ;
 int VK_DEBUG_REPORT_WARNING_BIT_EXT ;
 scalar_t__ VK_ERROR_INCOMPATIBLE_DRIVER ;
 void* VK_MAKE_VERSION (int,int ,unsigned int) ;
 int VK_STRUCTURE_TYPE_APPLICATION_INFO ;
 int VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT ;
 int VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO ;
 scalar_t__ VK_SUCCESS ;
 int VULKAN_SYMBOL_WRAPPER_LOAD_INSTANCE_EXTENSION_SYMBOL (int *,int (*) (int *,TYPE_4__*,int *,int *)) ;
 int * cached_instance_vk ;
 scalar_t__ dylib_load (char*) ;
 scalar_t__ dylib_proc (scalar_t__,char*) ;
 void* msg_hash_to_str (int ) ;
 TYPE_5__* stub1 () ;
 scalar_t__ video_driver_get_context_negotiation_interface () ;
 int vkCreateDebugReportCallbackEXT (int *,TYPE_4__*,int *,int *) ;
 scalar_t__ vkCreateInstance (TYPE_3__*,int *,int **) ;
 int vkDebugReportMessageEXT (int *,TYPE_4__*,int *,int *) ;
 int vkDestroyDebugReportCallbackEXT (int *,TYPE_4__*,int *,int *) ;
 int vulkan_debug_cb ;
 int vulkan_find_instance_extensions (char const**,unsigned int) ;
 scalar_t__ vulkan_library ;
 int vulkan_load_instance_symbols (TYPE_2__*) ;
 int vulkan_symbol_wrapper_init (scalar_t__) ;
 int vulkan_symbol_wrapper_load_global_symbols () ;

bool vulkan_context_init(gfx_ctx_vulkan_data_t *vk,
      enum vulkan_wsi_type type)
{
   unsigned i;
   VkResult res;
   PFN_vkGetInstanceProcAddr GetInstanceProcAddr;
   VkInstanceCreateInfo info = { VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO };
   VkApplicationInfo app = { VK_STRUCTURE_TYPE_APPLICATION_INFO };

   const char *instance_extensions[4];
   unsigned ext_count = 0;






   bool use_instance_ext;
   struct retro_hw_render_context_negotiation_interface_vulkan *iface =
      (struct retro_hw_render_context_negotiation_interface_vulkan*)video_driver_get_context_negotiation_interface();

   if (iface && iface->interface_type != RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN)
   {
      RARCH_WARN("[Vulkan]: Got HW context negotiation interface, but it's the wrong API.\n");
      iface = ((void*)0);
   }

   if (iface && iface->interface_version != RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN_VERSION)
   {
      RARCH_WARN("[Vulkan]: Got HW context negotiation interface, but it's the wrong interface version.\n");
      iface = ((void*)0);
   }

   instance_extensions[ext_count++] = "VK_KHR_surface";

   switch (type)
   {
      case 131:
         instance_extensions[ext_count++] = "VK_KHR_wayland_surface";
         break;
      case 137:
         instance_extensions[ext_count++] = "VK_KHR_android_surface";
         break;
      case 130:
         instance_extensions[ext_count++] = "VK_KHR_win32_surface";
         break;
      case 128:
         instance_extensions[ext_count++] = "VK_KHR_xlib_surface";
         break;
      case 129:
         instance_extensions[ext_count++] = "VK_KHR_xcb_surface";
         break;
      case 135:
         instance_extensions[ext_count++] = "VK_KHR_mir_surface";
         break;
      case 136:
         instance_extensions[ext_count++] = "VK_KHR_display";
         break;
      case 133:
         instance_extensions[ext_count++] = "VK_MVK_macos_surface";
         break;
      case 134:
         instance_extensions[ext_count++] = "VK_MVK_ios_surface";
         break;
      case 132:
      default:
         break;
   }

   if (!vulkan_library)
   {





      vulkan_library = dylib_load("libvulkan.so");
      if (!vulkan_library)
      {
         vulkan_library = dylib_load("libvulkan.so.1");
      }

   }

   if (!vulkan_library)
   {
      RARCH_ERR("[Vulkan]: Failed to open Vulkan loader.\n");
      return 0;
   }

   RARCH_LOG("Vulkan dynamic library loaded.\n");

   GetInstanceProcAddr =
      (PFN_vkGetInstanceProcAddr)dylib_proc(vulkan_library, "vkGetInstanceProcAddr");

   if (!GetInstanceProcAddr)
   {
      RARCH_ERR("[Vulkan]: Failed to load vkGetInstanceProcAddr symbol, broken loader?\n");
      return 0;
   }

   vulkan_symbol_wrapper_init(GetInstanceProcAddr);

   if (!vulkan_symbol_wrapper_load_global_symbols())
   {
      RARCH_ERR("[Vulkan]: Failed to load global Vulkan symbols, broken loader?\n");
      return 0;
   }

   use_instance_ext = vulkan_find_instance_extensions(instance_extensions, ext_count);

   app.pApplicationName = msg_hash_to_str(MSG_PROGRAM);
   app.applicationVersion = 0;
   app.pEngineName = msg_hash_to_str(MSG_PROGRAM);
   app.engineVersion = 0;
   app.apiVersion = VK_MAKE_VERSION(1, 0, 18);

   info.pApplicationInfo = &app;
   info.enabledExtensionCount = use_instance_ext ? ext_count : 0;
   info.ppEnabledExtensionNames = use_instance_ext ? instance_extensions : ((void*)0);





   if (iface && iface->get_application_info)
   {
      info.pApplicationInfo = iface->get_application_info();
      if (info.pApplicationInfo->pApplicationName)
      {
         RARCH_LOG("[Vulkan]: App: %s (version %u)\n",
               info.pApplicationInfo->pApplicationName,
               info.pApplicationInfo->applicationVersion);
      }

      if (info.pApplicationInfo->pEngineName)
      {
         RARCH_LOG("[Vulkan]: Engine: %s (version %u)\n",
               info.pApplicationInfo->pEngineName,
               info.pApplicationInfo->engineVersion);
      }
   }

   if (cached_instance_vk)
   {
      vk->context.instance = cached_instance_vk;
      cached_instance_vk = ((void*)0);
      res = VK_SUCCESS;
   }
   else
      res = vkCreateInstance(&info, ((void*)0), &vk->context.instance);
   for (i = 1; i < 4 && res == VK_ERROR_INCOMPATIBLE_DRIVER; i++)
   {
      info.pApplicationInfo = &app;
      app.apiVersion = VK_MAKE_VERSION(1, 0, i);
      res = vkCreateInstance(&info, ((void*)0), &vk->context.instance);
   }

   if (res != VK_SUCCESS)
   {
      RARCH_ERR("Failed to create Vulkan instance (%d).\n", res);
      return 0;
   }

   if (!vulkan_load_instance_symbols(vk))
   {
      RARCH_ERR("[Vulkan]: Failed to load instance symbols.\n");
      return 0;
   }

   return 1;
}
