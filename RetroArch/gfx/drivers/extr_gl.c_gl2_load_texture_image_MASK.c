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
typedef  enum gl_capability_enum { ____Placeholder_gl_capability_enum } gl_capability_enum ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  scalar_t__ GLint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 scalar_t__ GL_BGRA_EXT ; 
 int GL_CAPS_GLES3_SUPPORTED ; 
 int GL_CAPS_TEX_STORAGE ; 
 int GL_CAPS_TEX_STORAGE_EXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(GLenum target,
      GLint level,
      GLint internalFormat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      const GLvoid * data)
{
#if !defined(HAVE_PSGL) && !defined(ORBIS)
#ifdef HAVE_OPENGLES2
   enum gl_capability_enum cap = GL_CAPS_TEX_STORAGE_EXT;
#else
   enum gl_capability_enum cap = GL_CAPS_TEX_STORAGE;
#endif

   if (FUNC4(cap) && internalFormat != GL_BGRA_EXT)
   {
      FUNC0(&internalFormat);
#ifdef HAVE_OPENGLES2
      glTexStorage2DEXT(target, 1, internalFormat, width, height);
#else
      FUNC2   (target, 1, internalFormat, width, height);
#endif
   }
   else
#endif
   {
#ifdef HAVE_OPENGLES
      if (gl_check_capability(GL_CAPS_GLES3_SUPPORTED))
#endif
         FUNC0(&internalFormat);
      FUNC1(target, level, internalFormat, width,
            height, border, format, type, data);
   }
}