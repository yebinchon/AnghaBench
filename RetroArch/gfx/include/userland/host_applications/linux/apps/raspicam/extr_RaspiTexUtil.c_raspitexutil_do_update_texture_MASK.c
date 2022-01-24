#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  EGLenum ;
typedef  scalar_t__ EGLImageKHR ;
typedef  int /*<<< orphan*/  EGLDisplay ;
typedef  scalar_t__ EGLClientBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_IMAGE_KHR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC6(EGLDisplay display, EGLenum target,
                                   EGLClientBuffer mm_buf, GLuint *texture, EGLImageKHR *egl_image)
{
   FUNC5("%s: mm_buf %u", VCOS_FUNCTION, (unsigned) mm_buf);
   FUNC0(FUNC3(GL_TEXTURE_EXTERNAL_OES, *texture));
   if (*egl_image != EGL_NO_IMAGE_KHR)
   {
      /* Discard the EGL image for the preview frame */
      FUNC2(display, *egl_image);
      *egl_image = EGL_NO_IMAGE_KHR;
   }

   *egl_image = FUNC1(display, EGL_NO_CONTEXT, target, mm_buf, NULL);
   FUNC0(FUNC4(GL_TEXTURE_EXTERNAL_OES, *egl_image));

   return 0;
}