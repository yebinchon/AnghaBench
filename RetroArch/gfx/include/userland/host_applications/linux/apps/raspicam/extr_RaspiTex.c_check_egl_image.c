
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ egl_image; scalar_t__ y_egl_image; scalar_t__ u_egl_image; scalar_t__ v_egl_image; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 scalar_t__ EGL_NO_IMAGE_KHR ;

__attribute__((used)) static int check_egl_image(RASPITEX_STATE *state)
{
   if (state->egl_image == EGL_NO_IMAGE_KHR &&
         state->y_egl_image == EGL_NO_IMAGE_KHR &&
         state->u_egl_image == EGL_NO_IMAGE_KHR &&
         state->v_egl_image == EGL_NO_IMAGE_KHR)
      return -1;
   else
      return 0;
}
