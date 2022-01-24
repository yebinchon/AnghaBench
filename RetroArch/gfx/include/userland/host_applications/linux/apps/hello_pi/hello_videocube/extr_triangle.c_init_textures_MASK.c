#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tex; int /*<<< orphan*/  context; int /*<<< orphan*/  display; } ;
typedef  int /*<<< orphan*/  EGLClientBuffer ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_GL_TEXTURE_2D_KHR ; 
 scalar_t__ EGL_NO_IMAGE_KHR ; 
 int /*<<< orphan*/  GL_CLAMP_TO_EDGE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  IMAGE_SIZE_HEIGHT ; 
 int /*<<< orphan*/  IMAGE_SIZE_WIDTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ eglImage ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  texCoords ; 
 int /*<<< orphan*/  thread1 ; 
 int /*<<< orphan*/  video_decode_test ; 

__attribute__((used)) static void FUNC11(CUBE_STATE_T *state)
{
   //// load three texture buffers but use them on six OGL|ES texture surfaces
   FUNC5(1, &state->tex);

   FUNC2(GL_TEXTURE_2D, state->tex);
   FUNC7(GL_TEXTURE_2D, 0, GL_RGBA, IMAGE_SIZE_WIDTH, IMAGE_SIZE_HEIGHT, 0,
                GL_RGBA, GL_UNSIGNED_BYTE, NULL);

   FUNC8(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
   FUNC8(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
   FUNC8(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   FUNC8(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

   /* Create EGL Image */
   eglImage = FUNC0(
                state->display,
                state->context,
                EGL_GL_TEXTURE_2D_KHR,
                (EGLClientBuffer)state->tex,
                0);

   if (eglImage == EGL_NO_IMAGE_KHR)
   {
      FUNC9("eglCreateImageKHR failed.\n");
      FUNC1(1);
   }

   // Start rendering
   FUNC10(&thread1, NULL, video_decode_test, eglImage);

   // setup overall texture environment
   FUNC6(2, GL_FLOAT, 0, texCoords);
   FUNC4(GL_TEXTURE_COORD_ARRAY);

   FUNC3(GL_TEXTURE_2D);

   // Bind texture surface to current vertices
   FUNC2(GL_TEXTURE_2D, state->tex);
}