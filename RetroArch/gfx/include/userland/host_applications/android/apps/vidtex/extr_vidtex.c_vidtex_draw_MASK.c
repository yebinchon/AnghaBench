#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int opts; int /*<<< orphan*/  num_swaps; int /*<<< orphan*/  surface; int /*<<< orphan*/  display; TYPE_2__* slots; int /*<<< orphan*/  texture; } ;
typedef  TYPE_1__ VIDTEX_T ;
struct TYPE_10__ {void* video_frame; void* image; } ;
typedef  TYPE_2__ VIDTEX_IMAGE_SLOT_T ;
typedef  int GLfloat ;
typedef  int /*<<< orphan*/  EGLenum ;
typedef  void* EGLImageKHR ;
typedef  int /*<<< orphan*/  EGLClientBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_IMAGE_BRCM_MULTIMEDIA ; 
 int /*<<< orphan*/  EGL_IMAGE_BRCM_MULTIMEDIA_U ; 
 int /*<<< orphan*/  EGL_IMAGE_BRCM_MULTIMEDIA_V ; 
 int /*<<< orphan*/  EGL_IMAGE_BRCM_MULTIMEDIA_Y ; 
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 void* EGL_NO_IMAGE_KHR ; 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VIDTEX_OPT_IMG_PER_FRAME ; 
 int VIDTEX_OPT_U_TEXTURE ; 
 int VIDTEX_OPT_V_TEXTURE ; 
 int VIDTEX_OPT_Y_TEXTURE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,double,double,double) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 TYPE_2__* vt_tex_coords ; 
 int /*<<< orphan*/  vt_vertices ; 

__attribute__((used)) static void FUNC20(VIDTEX_T *vt, void *video_frame)
{
   EGLImageKHR image;
   VIDTEX_IMAGE_SLOT_T *slot;
   static uint32_t frame_num = 0;

   FUNC15(video_frame);

   FUNC5(0, 0, 0, 0);
   FUNC6(1);
   FUNC4(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   FUNC11();

   FUNC3(GL_TEXTURE_EXTERNAL_OES, vt->texture);
   FUNC0(vt);

   /* Lookup or create EGL image corresponding to supplied buffer handle.
    * N.B. Slot array is filled in sequentially, with the images all destroyed together on
    *      vidtex termination; it never has holes. */
   image = EGL_NO_IMAGE_KHR;

   for (slot = vt->slots; slot < vt->slots + FUNC16(vt->slots); slot++)
   {
      if (slot->video_frame == video_frame)
      {
         FUNC15(slot->image);
         image = slot->image;
         break;
      }

      if (slot->video_frame == NULL)
      {
         EGLenum target;
         FUNC15(slot->image == NULL);

         if (vt->opts & VIDTEX_OPT_Y_TEXTURE)
            target = EGL_IMAGE_BRCM_MULTIMEDIA_Y;
         else if (vt->opts & VIDTEX_OPT_U_TEXTURE)
            target = EGL_IMAGE_BRCM_MULTIMEDIA_U;
         else if (vt->opts & VIDTEX_OPT_V_TEXTURE)
            target = EGL_IMAGE_BRCM_MULTIMEDIA_V;
         else
            target = EGL_IMAGE_BRCM_MULTIMEDIA;

         image = FUNC1(vt->display, EGL_NO_CONTEXT, target,
               (EGLClientBuffer)video_frame, NULL);
         if (image == EGL_NO_IMAGE_KHR)
         {
            FUNC17("EGL image conversion error");
         }
         else
         {
            FUNC18("Created EGL image %p for buf %p", image, video_frame);
            slot->video_frame = video_frame;
            slot->image = image;
         }
         FUNC0(vt);

         break;
      }
   }

   if (slot == vt->slots + FUNC16(vt->slots))
   {
      FUNC17("Exceeded configured max number of EGL images");
   }

   /* Draw the EGL image */
   if (image != EGL_NO_IMAGE_KHR)
   {
      /* Assume 30fps */
      int frames_per_rev = 30 * 15;
      GLfloat angle = (frame_num * 360) / (GLfloat) frames_per_rev;
      frame_num = (frame_num + 1) % frames_per_rev;

      FUNC9(GL_TEXTURE_EXTERNAL_OES, image);
      FUNC0(vt);

      FUNC12(angle, 0.0, 0.0, 1.0);
      FUNC10(GL_VERTEX_ARRAY);
      FUNC14(3, GL_FLOAT, 0, vt_vertices);
      FUNC7(GL_COLOR_ARRAY);
      FUNC10(GL_TEXTURE_COORD_ARRAY);
      FUNC13(2, GL_FLOAT, 0, vt_tex_coords);

      FUNC8(GL_TRIANGLES, 0, FUNC16(vt_tex_coords) / 2);

      FUNC2(vt->display, vt->surface);

      if (vt->opts & VIDTEX_OPT_IMG_PER_FRAME)
      {
         FUNC19(vt);
      }

      vt->num_swaps++;
   }

   FUNC0(vt);
}