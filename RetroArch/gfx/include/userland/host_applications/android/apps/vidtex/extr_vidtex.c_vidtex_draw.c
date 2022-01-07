
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int opts; int num_swaps; int surface; int display; TYPE_2__* slots; int texture; } ;
typedef TYPE_1__ VIDTEX_T ;
struct TYPE_10__ {void* video_frame; void* image; } ;
typedef TYPE_2__ VIDTEX_IMAGE_SLOT_T ;
typedef int GLfloat ;
typedef int EGLenum ;
typedef void* EGLImageKHR ;
typedef int EGLClientBuffer ;


 int EGL_IMAGE_BRCM_MULTIMEDIA ;
 int EGL_IMAGE_BRCM_MULTIMEDIA_U ;
 int EGL_IMAGE_BRCM_MULTIMEDIA_V ;
 int EGL_IMAGE_BRCM_MULTIMEDIA_Y ;
 int EGL_NO_CONTEXT ;
 void* EGL_NO_IMAGE_KHR ;
 int GL_COLOR_ARRAY ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_FLOAT ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int GL_TRIANGLES ;
 int GL_VERTEX_ARRAY ;
 int VIDTEX_CHECK_GL (TYPE_1__*) ;
 int VIDTEX_OPT_IMG_PER_FRAME ;
 int VIDTEX_OPT_U_TEXTURE ;
 int VIDTEX_OPT_V_TEXTURE ;
 int VIDTEX_OPT_Y_TEXTURE ;
 void* eglCreateImageKHR (int ,int ,int ,int ,int *) ;
 int eglSwapBuffers (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glClearColor (int ,int ,int ,int ) ;
 int glClearDepthf (int) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEGLImageTargetTexture2DOES (int ,void*) ;
 int glEnableClientState (int ) ;
 int glLoadIdentity () ;
 int glRotatef (int,double,double,double) ;
 int glTexCoordPointer (int,int ,int ,TYPE_2__*) ;
 int glVertexPointer (int,int ,int ,int ) ;
 int vcos_assert (void*) ;
 int vcos_countof (TYPE_2__*) ;
 int vcos_log_error (char*) ;
 int vcos_log_trace (char*,void*,void*) ;
 int vidtex_destroy_images (TYPE_1__*) ;
 TYPE_2__* vt_tex_coords ;
 int vt_vertices ;

__attribute__((used)) static void vidtex_draw(VIDTEX_T *vt, void *video_frame)
{
   EGLImageKHR image;
   VIDTEX_IMAGE_SLOT_T *slot;
   static uint32_t frame_num = 0;

   vcos_assert(video_frame);

   glClearColor(0, 0, 0, 0);
   glClearDepthf(1);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   glLoadIdentity();

   glBindTexture(GL_TEXTURE_EXTERNAL_OES, vt->texture);
   VIDTEX_CHECK_GL(vt);




   image = EGL_NO_IMAGE_KHR;

   for (slot = vt->slots; slot < vt->slots + vcos_countof(vt->slots); slot++)
   {
      if (slot->video_frame == video_frame)
      {
         vcos_assert(slot->image);
         image = slot->image;
         break;
      }

      if (slot->video_frame == ((void*)0))
      {
         EGLenum target;
         vcos_assert(slot->image == ((void*)0));

         if (vt->opts & VIDTEX_OPT_Y_TEXTURE)
            target = EGL_IMAGE_BRCM_MULTIMEDIA_Y;
         else if (vt->opts & VIDTEX_OPT_U_TEXTURE)
            target = EGL_IMAGE_BRCM_MULTIMEDIA_U;
         else if (vt->opts & VIDTEX_OPT_V_TEXTURE)
            target = EGL_IMAGE_BRCM_MULTIMEDIA_V;
         else
            target = EGL_IMAGE_BRCM_MULTIMEDIA;

         image = eglCreateImageKHR(vt->display, EGL_NO_CONTEXT, target,
               (EGLClientBuffer)video_frame, ((void*)0));
         if (image == EGL_NO_IMAGE_KHR)
         {
            vcos_log_error("EGL image conversion error");
         }
         else
         {
            vcos_log_trace("Created EGL image %p for buf %p", image, video_frame);
            slot->video_frame = video_frame;
            slot->image = image;
         }
         VIDTEX_CHECK_GL(vt);

         break;
      }
   }

   if (slot == vt->slots + vcos_countof(vt->slots))
   {
      vcos_log_error("Exceeded configured max number of EGL images");
   }


   if (image != EGL_NO_IMAGE_KHR)
   {

      int frames_per_rev = 30 * 15;
      GLfloat angle = (frame_num * 360) / (GLfloat) frames_per_rev;
      frame_num = (frame_num + 1) % frames_per_rev;

      glEGLImageTargetTexture2DOES(GL_TEXTURE_EXTERNAL_OES, image);
      VIDTEX_CHECK_GL(vt);

      glRotatef(angle, 0.0, 0.0, 1.0);
      glEnableClientState(GL_VERTEX_ARRAY);
      glVertexPointer(3, GL_FLOAT, 0, vt_vertices);
      glDisableClientState(GL_COLOR_ARRAY);
      glEnableClientState(GL_TEXTURE_COORD_ARRAY);
      glTexCoordPointer(2, GL_FLOAT, 0, vt_tex_coords);

      glDrawArrays(GL_TRIANGLES, 0, vcos_countof(vt_tex_coords) / 2);

      eglSwapBuffers(vt->display, vt->surface);

      if (vt->opts & VIDTEX_OPT_IMG_PER_FRAME)
      {
         vidtex_destroy_images(vt);
      }

      vt->num_swaps++;
   }

   VIDTEX_CHECK_GL(vt);
}
