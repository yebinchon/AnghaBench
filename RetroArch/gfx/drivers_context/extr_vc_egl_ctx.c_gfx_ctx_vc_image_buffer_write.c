
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int surf; int dpy; } ;
struct TYPE_4__ {TYPE_1__ egl; void** eglBuffer; scalar_t__* vgimage; int eglimage_ctx; int res; int pbuff_surf; } ;
typedef TYPE_2__ vc_ctx_data_t ;
typedef int EGLClientBuffer ;


 int EGL_OPENVG_API ;
 int EGL_VG_PARENT_IMAGE_KHR ;
 unsigned int MAX_EGLIMAGE_TEXTURES ;
 int VG_IMAGE_QUALITY_NONANTIALIASED ;
 int VG_sRGB_565 ;
 int VG_sXRGB_8888 ;
 int eglBindAPI (int ) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int gfx_ctx_vc_bind_api (int *,int ,int ,int ) ;
 void* peglCreateImageKHR (int ,int ,int ,int ,int *) ;
 int vc_api ;
 scalar_t__ vgCreateImage (int ,int ,int ,int ) ;
 int vgImageSubData (scalar_t__,void const*,unsigned int,int ,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static bool gfx_ctx_vc_image_buffer_write(void *data, const void *frame, unsigned width,
      unsigned height, unsigned pitch, bool rgb32, unsigned index, void **image_handle)
{
   bool ret = 0;
   vc_ctx_data_t *vc = (vc_ctx_data_t*)data;

   if (!vc || index >= MAX_EGLIMAGE_TEXTURES)
      goto error;

   eglBindAPI(EGL_OPENVG_API);
   eglMakeCurrent(vc->egl.dpy, vc->pbuff_surf, vc->pbuff_surf, vc->eglimage_ctx);

   if (!vc->eglBuffer[index] || !vc->vgimage[index])
   {
      vc->vgimage[index] = vgCreateImage(
            rgb32 ? VG_sXRGB_8888 : VG_sRGB_565,
            vc->res,
            vc->res,
            VG_IMAGE_QUALITY_NONANTIALIASED);
      vc->eglBuffer[index] = peglCreateImageKHR(
            vc->egl.dpy,
            vc->eglimage_ctx,
            EGL_VG_PARENT_IMAGE_KHR,
            (EGLClientBuffer)vc->vgimage[index],
            ((void*)0));
      ret = 1;
   }

   vgImageSubData(
         vc->vgimage[index],
         frame, pitch,
         (rgb32 ? VG_sXRGB_8888 : VG_sRGB_565),
         0,
         0,
         width,
         height);
   *image_handle = vc->eglBuffer[index];

   gfx_ctx_vc_bind_api(((void*)0), vc_api, 0, 0);
   eglMakeCurrent(vc->egl.dpy, vc->egl.surf, vc->egl.surf, vc->egl.ctx);

   return ret;

error:
   *image_handle = ((void*)0);
   return 0;
}
