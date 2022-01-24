#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  void gfx_ctx_wgl_data_t ;
struct TYPE_3__ {int /*<<< orphan*/  lpfnWndProc; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ WNDCLASSEX ;

/* Variables and functions */
#define  GFX_CTX_NONE 129 
#define  GFX_CTX_VULKAN_API 128 
 int /*<<< orphan*/  VULKAN_WSI_WIN32 ; 
 int /*<<< orphan*/  WndProcGL ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  dll_handle ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ g_win32_inited ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int win32_api ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  win32_vk ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void *FUNC8(video_frame_info_t *video_info, void *video_driver)
{
   WNDCLASSEX wndclass     = {0};
   gfx_ctx_wgl_data_t *wgl = (gfx_ctx_wgl_data_t*)FUNC0(1, sizeof(*wgl));

   if (!wgl)
      return NULL;

   if (g_win32_inited)
      FUNC3(NULL);

#ifdef HAVE_DYNAMIC
   dll_handle = dylib_load("OpenGL32.dll");
#endif

   FUNC7();
   FUNC5();

   wndclass.lpfnWndProc   = WndProcGL;
   if (!FUNC6(&wndclass, true, NULL))
      goto error;

   switch (win32_api)
   {
      case GFX_CTX_VULKAN_API:
#ifdef HAVE_VULKAN
         if (!vulkan_context_init(&win32_vk, VULKAN_WSI_WIN32))
            goto error;
#endif
         break;
      case GFX_CTX_NONE:
      default:
         break;
   }

   return wgl;

error:
   if (wgl)
      FUNC2(wgl);
   return NULL;
}