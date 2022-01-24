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
struct target {int /*<<< orphan*/  tex; int /*<<< orphan*/  fbo; } ;
typedef  int /*<<< orphan*/  fft_t ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 scalar_t__ GL_RG16I ; 
 scalar_t__ GL_RGBA8 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,unsigned int,unsigned int,unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(fft_t *fft, struct target *target, GLenum format,
      unsigned width, unsigned height, unsigned levels, GLenum mag, GLenum min)
{
   FUNC0(fft, &target->tex, format, width, height, levels, mag, min);
   FUNC7(1, &target->fbo);
   FUNC1(GL_FRAMEBUFFER, target->fbo);

   FUNC6(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
      target->tex, 0);

   if (format == GL_RGBA8)
   {
      FUNC5(0, 0, 0, 0);
      FUNC2(GL_COLOR_BUFFER_BIT);
   }
   else if (format == GL_RG16I)
   {
      static const GLint v[] = { 0, 0, 0, 0 };
      FUNC3(GL_COLOR, 0, v);
   }
   else
   {
      static const GLuint v[] = { 0, 0, 0, 0 };
      FUNC4(GL_COLOR, 0, v);
   }
   FUNC1(GL_FRAMEBUFFER, 0);
}