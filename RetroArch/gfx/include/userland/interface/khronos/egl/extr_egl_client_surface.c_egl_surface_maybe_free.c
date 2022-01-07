
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ context_binding_count; int is_destroyed; } ;
typedef TYPE_1__ EGL_SURFACE_T ;


 int egl_surface_free (TYPE_1__*) ;
 int vcos_assert (TYPE_1__*) ;

void egl_surface_maybe_free(EGL_SURFACE_T *surface)
{
   vcos_assert(surface);

   if (!surface->is_destroyed)
      return;

   if (surface->context_binding_count)
      return;

   egl_surface_free(surface);
}
