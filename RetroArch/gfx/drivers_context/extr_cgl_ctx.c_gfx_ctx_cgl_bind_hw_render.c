
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int glCtx; } ;
typedef TYPE_1__ gfx_ctx_cgl_data_t ;


 int CGLSetCurrentContext (int ) ;

__attribute__((used)) static void gfx_ctx_cgl_bind_hw_render(void *data, bool enable)
{
   gfx_ctx_cgl_data_t *cgl = (gfx_ctx_cgl_data_t*)data;

   (void)enable;

   CGLSetCurrentContext(cgl->glCtx);


}
