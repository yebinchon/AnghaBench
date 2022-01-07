
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * g_ctx; int g_glx_win; } ;





 int None ;
 TYPE_1__* current_context_data ;
 int g_x11_dpy ;
 int glXMakeContextCurrent (int ,int ,int ,int *) ;
 int x_api ;

__attribute__((used)) static void gfx_ctx_x_make_current(bool release)
{
   if (!current_context_data)
      return;

   switch (x_api)
   {
      case 129:
      case 128:
         break;

      case 130:
      default:
         break;
   }
}
