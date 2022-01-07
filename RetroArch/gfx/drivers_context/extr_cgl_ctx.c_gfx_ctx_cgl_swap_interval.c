
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int glCtx; } ;
typedef TYPE_1__ gfx_ctx_cgl_data_t ;
typedef int GLint ;


 int CGLSetParameter (int ,int ,int*) ;
 int kCGLCPSwapInterval ;

__attribute__((used)) static void gfx_ctx_cgl_swap_interval(void *data, int interval)
{
   gfx_ctx_cgl_data_t *cgl = (gfx_ctx_cgl_data_t*)data;
   GLint params = interval;

   CGLSetParameter(cgl->glCtx, kCGLCPSwapInterval, &params);
}
