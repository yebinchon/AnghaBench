#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  current_swapchain_index; } ;
struct TYPE_6__ {TYPE_1__ context; } ;

/* Variables and functions */
#define  GFX_CTX_NONE 130 
#define  GFX_CTX_OPENGL_API 129 
#define  GFX_CTX_VULKAN_API 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int win32_api ; 
 int /*<<< orphan*/  win32_hdc ; 
 TYPE_2__ win32_vk ; 

__attribute__((used)) static void FUNC3(void *data, void *data2)
{
   (void)data;

   switch (win32_api)
   {
      case GFX_CTX_OPENGL_API:
         FUNC0(win32_hdc);
         break;
      case GFX_CTX_VULKAN_API:
#ifdef HAVE_VULKAN
         vulkan_present(&win32_vk, win32_vk.context.current_swapchain_index);
         vulkan_acquire_next_image(&win32_vk);
#endif
         break;

      case GFX_CTX_NONE:
      default:
         break;
   }
}