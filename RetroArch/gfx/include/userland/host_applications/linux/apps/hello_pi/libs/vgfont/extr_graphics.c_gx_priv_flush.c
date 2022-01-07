
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int disp; } ;
struct TYPE_4__ {int surface; } ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;
typedef int EGLBoolean ;


 TYPE_3__ display ;
 int eglSwapBuffers (int ,int ) ;
 int vcos_assert (int ) ;

void gx_priv_flush(GRAPHICS_RESOURCE_HANDLE res)
{
   EGLBoolean result;
   result = eglSwapBuffers(display.disp, res->surface);
   vcos_assert(result);
}
