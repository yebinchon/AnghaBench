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
struct texture_image {int /*<<< orphan*/  pixels; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
typedef  uintptr_t GLuint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLUE ; 
 int /*<<< orphan*/  GL_CLAMP_TO_EDGE ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_LINEAR_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  GL_LINEAR_MIPMAP_NEAREST ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_RED ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_SWIZZLE_B ; 
 int /*<<< orphan*/  GL_TEXTURE_SWIZZLE_R ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNPACK_ROW_LENGTH ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
#define  TEXTURE_FILTER_LINEAR 131 
#define  TEXTURE_FILTER_MIPMAP_LINEAR 130 
#define  TEXTURE_FILTER_MIPMAP_NEAREST 129 
#define  TEXTURE_FILTER_NEAREST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int,uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(
      const struct texture_image *ti,
      enum texture_filter_type filter_type,
      uintptr_t *idptr)
{
   /* Generate the OpenGL texture object */
   GLuint id;
   unsigned levels;
   GLenum mag_filter, min_filter;

   FUNC1(1, &id);
   *idptr = id;
   FUNC0(GL_TEXTURE_2D, id);

   levels = 1;
   if (filter_type == TEXTURE_FILTER_MIPMAP_LINEAR || filter_type == TEXTURE_FILTER_MIPMAP_NEAREST)
      levels = FUNC7(ti->width, ti->height);

   FUNC5(GL_TEXTURE_2D, levels, GL_RGBA8, ti->width, ti->height);
   FUNC4(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   FUNC4(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

   switch (filter_type)
   {
      case TEXTURE_FILTER_LINEAR:
         mag_filter = GL_LINEAR;
         min_filter = GL_LINEAR;
         break;

      case TEXTURE_FILTER_NEAREST:
         mag_filter = GL_NEAREST;
         min_filter = GL_NEAREST;
         break;

      case TEXTURE_FILTER_MIPMAP_NEAREST:
         mag_filter = GL_LINEAR;
         min_filter = GL_LINEAR_MIPMAP_NEAREST;
         break;

      case TEXTURE_FILTER_MIPMAP_LINEAR:
	  default:
         mag_filter = GL_LINEAR;
         min_filter = GL_LINEAR_MIPMAP_LINEAR;
         break;
   }
   FUNC4(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, mag_filter);
   FUNC4(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, min_filter);

   FUNC3(GL_UNPACK_ALIGNMENT, 4);
   FUNC3(GL_UNPACK_ROW_LENGTH, 0);
   FUNC6(GL_TEXTURE_2D, 0, 0, 0,
                   ti->width, ti->height, GL_RGBA, GL_UNSIGNED_BYTE, ti->pixels);

   if (levels > 1)
      FUNC2(GL_TEXTURE_2D);
   FUNC4(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_R, GL_BLUE);
   FUNC4(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_B, GL_RED);
   FUNC0(GL_TEXTURE_2D, 0);
}