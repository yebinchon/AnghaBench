
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int egl; } ;
typedef TYPE_1__ xegl_ctx_data_t ;






 int egl_bind_hw_render (int *,int) ;
 int xegl_api ;

__attribute__((used)) static void gfx_ctx_xegl_bind_hw_render(void *data, bool enable)
{
   xegl_ctx_data_t *xegl = (xegl_ctx_data_t*)data;

   switch (xegl_api)
   {
      case 130:
      case 129:
      case 128:



         break;
      case 131:
      default:
         break;
   }
}
