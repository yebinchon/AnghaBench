#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct string_list {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int vulkan_gpu_index; int d3d10_gpu_index; int d3d11_gpu_index; int d3d12_gpu_index; } ;
struct TYPE_5__ {TYPE_1__ ints; } ;
typedef  TYPE_2__ settings_t ;
typedef  enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;

/* Variables and functions */
#define  GFX_CTX_DIRECT3D10_API 131 
#define  GFX_CTX_DIRECT3D11_API 130 
#define  GFX_CTX_DIRECT3D12_API 129 
#define  GFX_CTX_VULKAN_API 128 
 TYPE_2__* FUNC0 () ; 
 int FUNC1 () ; 
 struct string_list* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned type, const char *label,
      bool wraparound)
{
   enum gfx_ctx_api api = FUNC1();

   switch (api)
   {
#ifdef HAVE_VULKAN
      case GFX_CTX_VULKAN_API:
      {
         struct string_list *list = video_driver_get_gpu_api_devices(api);

         if (list)
         {
            settings_t *settings = config_get_ptr();
            if (settings->ints.vulkan_gpu_index <(int)(list->size - 1))
               settings->ints.vulkan_gpu_index++;
            else if (settings->ints.vulkan_gpu_index == (int)(list->size - 1))
               settings->ints.vulkan_gpu_index = 0;
         }

         break;
      }
#endif
#ifdef HAVE_D3D10
      case GFX_CTX_DIRECT3D10_API:
      {
         struct string_list *list = video_driver_get_gpu_api_devices(api);

         if (list)
         {
            settings_t *settings = config_get_ptr();
            if (settings->ints.d3d10_gpu_index < (int)(list->size - 1))
               settings->ints.d3d10_gpu_index++;
            else if (settings->ints.d3d10_gpu_index == (int)(list->size - 1))
               settings->ints.d3d10_gpu_index = 0;
         }

         break;
      }
#endif
#ifdef HAVE_D3D11
      case GFX_CTX_DIRECT3D11_API:
      {
         struct string_list *list = video_driver_get_gpu_api_devices(api);

         if (list)
         {
            settings_t *settings = config_get_ptr();
            if (settings->ints.d3d11_gpu_index < (int)(list->size - 1))
               settings->ints.d3d11_gpu_index++;
            else if (settings->ints.d3d11_gpu_index == (int)(list->size - 1))
               settings->ints.d3d11_gpu_index = 0;
         }

         break;
      }
#endif
#ifdef HAVE_D3D12
      case GFX_CTX_DIRECT3D12_API:
      {
         struct string_list *list = video_driver_get_gpu_api_devices(api);

         if (list)
         {
            settings_t *settings = config_get_ptr();
            if (settings->ints.d3d12_gpu_index < (int)(list->size - 1))
               settings->ints.d3d12_gpu_index++;
            else if (settings->ints.d3d12_gpu_index == (int)(list->size - 1))
               settings->ints.d3d12_gpu_index = 0;
         }

         break;
      }
#endif
      default:
         break;
   }

   return 0;
}