
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef void KHRN_POINTER_MAP_T ;
typedef int EGL_SYNC_T ;


 int UNUSED (void*) ;
 int egl_sync_term (int *) ;
 int khrn_platform_free (int *) ;
 int vcos_assert (int ) ;

__attribute__((used)) static void egl_sync_destroy_iterator
   (KHRN_POINTER_MAP_T *sync_map, uint32_t sync, void *sync_handle, void *data)
{
   EGL_SYNC_T *sync_ptr = (EGL_SYNC_T *) sync;

   UNUSED(sync_map);
   UNUSED(sync_handle);
   UNUSED(data);

   vcos_assert(sync_ptr != ((void*)0));

   egl_sync_term(sync_ptr);
   khrn_platform_free(sync_ptr);
}
