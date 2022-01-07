
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_10__ {int disp; } ;
struct TYPE_8__ {int pixmap; } ;
struct TYPE_9__ {scalar_t__ type; int magic; int surface; TYPE_1__ u; } ;
typedef int GX_CLIENT_STATE_T ;
typedef TYPE_2__* GRAPHICS_RESOURCE_HANDLE ;
typedef int EGLBoolean ;


 scalar_t__ GX_PBUFFER ;
 int GX_TRACE (char*,...) ;
 scalar_t__ GX_WINDOW ;
 int RES_MAGIC ;
 TYPE_7__ display ;
 int eglDestroySurface (int ,int ) ;
 int eglWaitClient () ;
 int gx_priv_destroy_native_window (TYPE_2__*) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,TYPE_2__*) ;
 int vcos_assert (int) ;
 int vcos_free (TYPE_2__*) ;
 int vgDestroyImage (int ) ;
 scalar_t__ vgGetError () ;

int32_t graphics_delete_resource( GRAPHICS_RESOURCE_HANDLE res )
{
   EGLBoolean result;

   if (!res)
   {

      return 0;
   }
   GX_TRACE("delete resource @%p", res);

   vcos_assert(res->magic == RES_MAGIC);

   if (res->type == GX_PBUFFER)
   {
      GX_CLIENT_STATE_T save;
      gx_priv_save(&save, res);
      vgDestroyImage(res->u.pixmap);
      vcos_assert(vgGetError() == 0);
      gx_priv_restore(&save);
   }

   GX_TRACE("graphics_delete_resource: calling eglDestroySurface...");
   result = eglDestroySurface(display.disp, res->surface);
   vcos_assert(result);

   GX_TRACE("graphics_delete_resource: calling eglWaitClient...");
   eglWaitClient();

   if (res->type == GX_WINDOW)
   {
      GX_TRACE("graphics_delete_resource: calling gx_priv_destroy_native_window...");
      gx_priv_destroy_native_window(res);
   }

   res->magic = ~RES_MAGIC;
   vcos_free(res);
   GX_TRACE("graphics_delete_resource: done");

   return 0;
}
