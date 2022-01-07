
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int allocated; TYPE_1__* surfaces; } ;
struct TYPE_4__ {int avail_buffers_valid; int avail_buffers; } ;
typedef TYPE_1__ EGL_SURFACE_T ;


 unsigned int EGL_SURFACE_POOL_SIZE ;
 int khrn_platform_free (void*) ;
 int khronos_platform_semaphore_destroy (int *) ;
 TYPE_2__ surface_pool ;

__attribute__((used)) static void egl_surface_pool_free(EGL_SURFACE_T* surface)
{
   unsigned int i = 0;



   if (surface->avail_buffers_valid)
      khronos_platform_semaphore_destroy(&surface->avail_buffers);
   surface->avail_buffers_valid = 0;

   i = (unsigned int) (surface - surface_pool.surfaces);

   if (i < EGL_SURFACE_POOL_SIZE)
   {
      surface_pool.allocated &= ~(1 << i);
   }
   else
   {
      khrn_platform_free((void*)surface);
   }
}
