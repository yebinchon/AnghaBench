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
struct video_fbo_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  RARCH_GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  RARCH_GL_FORMAT32 ; 
 int /*<<< orphan*/  RARCH_GL_FRAMEBUFFER ; 
 scalar_t__ RARCH_GL_FRAMEBUFFER_COMPLETE ; 
 int /*<<< orphan*/  RARCH_GL_INTERNAL_FORMAT32 ; 
 int /*<<< orphan*/  RARCH_GL_TEXTURE_TYPE32 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(
      struct video_fbo_rect *fbo_rect,
      GLuint fbo,
      GLuint* texture
      )
{
   FUNC1(fbo);
   FUNC6(1, texture);
   FUNC7(1, texture);
   FUNC5(GL_TEXTURE_2D, *texture);
   FUNC4(GL_TEXTURE_2D,
         0, RARCH_GL_INTERNAL_FORMAT32,
         fbo_rect->width,
         fbo_rect->height,
         0, RARCH_GL_TEXTURE_TYPE32,
         RARCH_GL_FORMAT32, NULL);

   FUNC3(RARCH_GL_FRAMEBUFFER,
         RARCH_GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
         *texture, 0);

   if (FUNC2(RARCH_GL_FRAMEBUFFER)
         == RARCH_GL_FRAMEBUFFER_COMPLETE)
      return true;

   FUNC0("Failed to reinitialize FBO texture.\n");
   return false;
}