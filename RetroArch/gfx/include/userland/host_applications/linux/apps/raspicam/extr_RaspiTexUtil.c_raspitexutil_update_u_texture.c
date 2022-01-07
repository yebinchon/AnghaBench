
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u_egl_image; int u_texture; int display; } ;
typedef TYPE_1__ RASPITEX_STATE ;
typedef int EGLClientBuffer ;


 int EGL_IMAGE_BRCM_MULTIMEDIA_U ;
 int raspitexutil_do_update_texture (int ,int ,int ,int *,int *) ;

int raspitexutil_update_u_texture(RASPITEX_STATE *raspitex_state,
                                  EGLClientBuffer mm_buf)
{
   return raspitexutil_do_update_texture(raspitex_state->display,
                                         EGL_IMAGE_BRCM_MULTIMEDIA_U, mm_buf,
                                         &raspitex_state->u_texture, &raspitex_state->u_egl_image);
}
