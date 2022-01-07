
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int need_new_swapchain; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;
typedef TYPE_2__ gfx_ctx_x_data_t ;




 int x11_check_window (void*,int*,int*,unsigned int*,unsigned int*,int) ;
 int x_api ;

__attribute__((used)) static void gfx_ctx_x_check_window(void *data, bool *quit,
      bool *resize, unsigned *width, unsigned *height,
      bool is_shutdown)
{
   x11_check_window(data, quit, resize, width, height,
         is_shutdown);

   switch (x_api)
   {
      case 128:







         break;

      case 129:
      default:
         break;
   }
}
