
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int is_destroyed; scalar_t__ name; } ;
typedef void KHRN_POINTER_MAP_T ;
typedef TYPE_1__ EGL_CONTEXT_T ;


 int UNUSED (void*) ;
 int UNUSED_NDEBUG (scalar_t__) ;
 int egl_context_maybe_free (TYPE_1__*) ;
 int vcos_assert (int) ;

__attribute__((used)) static void callback_destroy_context(KHRN_POINTER_MAP_T *map, uint32_t key, void *value, void *data)
{
   EGL_CONTEXT_T *context = (EGL_CONTEXT_T *)value;

   UNUSED(map);
   UNUSED(data);
   UNUSED_NDEBUG(key);

   vcos_assert( context != ((void*)0) );
   vcos_assert((uintptr_t)key == (uintptr_t)context->name);

   vcos_assert(!context->is_destroyed);

   context->is_destroyed = 1;
   egl_context_maybe_free(context);
}
