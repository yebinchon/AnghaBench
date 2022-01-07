
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int egl; } ;
typedef TYPE_1__ xegl_ctx_data_t ;





 int egl_set_swap_interval (int *,int) ;
 int xegl_api ;

__attribute__((used)) static void gfx_ctx_xegl_set_swap_interval(void *data, int swap_interval)
{
   xegl_ctx_data_t *xegl = (xegl_ctx_data_t*)data;

   switch (xegl_api)
   {
      case 129:
      case 128:



         break;
      case 130:
      default:
         break;
   }
}
