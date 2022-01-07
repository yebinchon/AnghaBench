
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int disp; } ;


 int GRAPHICS_RESOURCE_HANDLE_TYPE_MAX ;
 TYPE_1__ display ;
 int eglDestroyContext (int ,scalar_t__) ;
 int eglTerminate (int ) ;
 scalar_t__* gx_contexts ;
 int gx_log_cat ;
 int gx_priv_destroy () ;
 int gx_priv_font_term () ;
 scalar_t__ inited ;
 int vcos_assert (scalar_t__) ;
 int vcos_log_unregister (int *) ;

int32_t graphics_uninitialise( void )
{
   int i;
   vcos_assert(inited);

   gx_priv_font_term();

   for (i=0; i<GRAPHICS_RESOURCE_HANDLE_TYPE_MAX; i++)
      if (gx_contexts[i])
         eglDestroyContext(display.disp,gx_contexts[i]);

   eglTerminate(display.disp);
   gx_priv_destroy();
   vcos_log_unregister(&gx_log_cat);
   inited = 0;
   return 0;
}
