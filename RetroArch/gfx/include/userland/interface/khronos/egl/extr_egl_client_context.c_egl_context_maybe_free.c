
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_current; int is_destroyed; } ;
typedef TYPE_1__ EGL_CONTEXT_T ;


 int egl_context_term (TYPE_1__*) ;
 int khrn_platform_free (TYPE_1__*) ;
 int vcos_assert (TYPE_1__*) ;

void egl_context_maybe_free(EGL_CONTEXT_T *context)
{
   vcos_assert(context);

   if (!context->is_destroyed)
      return;

   if (context->is_current)
      return;

   egl_context_term(context);
   khrn_platform_free(context);
}
