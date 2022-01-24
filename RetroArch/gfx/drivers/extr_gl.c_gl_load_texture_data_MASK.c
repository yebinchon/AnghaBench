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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
typedef  enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CAPS_MIPMAP ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_LINEAR_MIPMAP_NEAREST ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_NEAREST_MIPMAP_NEAREST ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT_4_4_4_4 ; 
 int /*<<< orphan*/  RARCH_GL_FORMAT32 ; 
 int /*<<< orphan*/  RARCH_GL_INTERNAL_FORMAT32 ; 
 int /*<<< orphan*/  RARCH_GL_TEXTURE_TYPE32 ; 
#define  TEXTURE_FILTER_LINEAR 131 
#define  TEXTURE_FILTER_MIPMAP_LINEAR 130 
#define  TEXTURE_FILTER_MIPMAP_NEAREST 129 
#define  TEXTURE_FILTER_NEAREST 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(
      GLuint id,
      enum gfx_wrap_type wrap_type,
      enum texture_filter_type filter_type,
      unsigned alignment,
      unsigned width, unsigned height,
      const void *frame, unsigned base_size)
{
   GLint mag_filter, min_filter;
   bool want_mipmap = false;
   bool use_rgba    = FUNC6();
   bool rgb32       = (base_size == (sizeof(uint32_t)));
   GLenum wrap      = FUNC0(wrap_type);
   bool have_mipmap = FUNC5(GL_CAPS_MIPMAP);

   if (!have_mipmap)
   {
      /* Assume no mipmapping support. */
      switch (filter_type)
      {
         case TEXTURE_FILTER_MIPMAP_LINEAR:
            filter_type = TEXTURE_FILTER_LINEAR;
            break;
         case TEXTURE_FILTER_MIPMAP_NEAREST:
            filter_type = TEXTURE_FILTER_NEAREST;
            break;
         default:
            break;
      }
   }

   switch (filter_type)
   {
      case TEXTURE_FILTER_MIPMAP_LINEAR:
         min_filter = GL_LINEAR_MIPMAP_NEAREST;
         mag_filter = GL_LINEAR;
         want_mipmap = true;
         break;
      case TEXTURE_FILTER_MIPMAP_NEAREST:
         min_filter = GL_NEAREST_MIPMAP_NEAREST;
         mag_filter = GL_NEAREST;
         want_mipmap = true;
         break;
      case TEXTURE_FILTER_NEAREST:
         min_filter = GL_NEAREST;
         mag_filter = GL_NEAREST;
         break;
      case TEXTURE_FILTER_LINEAR:
      default:
         min_filter = GL_LINEAR;
         mag_filter = GL_LINEAR;
         break;
   }

   FUNC4(id, wrap, mag_filter, min_filter);

   FUNC2(GL_UNPACK_ALIGNMENT, alignment);
   FUNC3(GL_TEXTURE_2D,
         0,
         (use_rgba || !rgb32) ? GL_RGBA : RARCH_GL_INTERNAL_FORMAT32,
         width, height, 0,
         (use_rgba || !rgb32) ? GL_RGBA : RARCH_GL_TEXTURE_TYPE32,
         (rgb32) ? RARCH_GL_FORMAT32 : GL_UNSIGNED_SHORT_4_4_4_4, frame);

   if (want_mipmap && have_mipmap)
      FUNC1(GL_TEXTURE_2D);
}