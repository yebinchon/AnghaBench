
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int need_new_swapchain; } ;




 int win32_api ;
 int win32_check_window (int*,int*,unsigned int*,unsigned int*) ;
 TYPE_1__ win32_vk ;

__attribute__((used)) static void gfx_ctx_wgl_check_window(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height,
      bool is_shutdown)
{
   win32_check_window(quit, resize, width, height);

   switch (win32_api)
   {
      case 128:




         break;

      case 129:
      default:
         break;
   }
}
