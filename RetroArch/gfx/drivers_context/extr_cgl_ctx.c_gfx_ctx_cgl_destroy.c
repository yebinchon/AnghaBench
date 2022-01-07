
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ displayID; scalar_t__ glCtx; } ;
typedef TYPE_1__ gfx_ctx_cgl_data_t ;


 int CGDisplayRelease (scalar_t__) ;
 int CGLDestroyContext (scalar_t__) ;
 int CGLSetCurrentContext (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void gfx_ctx_cgl_destroy(void *data)
{
   gfx_ctx_cgl_data_t *cgl = (gfx_ctx_cgl_data_t*)data;

   if (cgl->glCtx)
   {
      CGLSetCurrentContext(((void*)0));
      CGLDestroyContext(cgl->glCtx);
   }

   if (cgl->displayID)
      CGDisplayRelease(cgl->displayID);

   if (cgl)
      free(cgl);
}
