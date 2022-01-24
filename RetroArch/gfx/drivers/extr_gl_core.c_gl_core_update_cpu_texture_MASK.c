#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gl_core_streamed_texture {unsigned int width; unsigned int height; scalar_t__ tex; } ;
struct TYPE_4__ {scalar_t__ rgb32; } ;
struct TYPE_5__ {TYPE_1__ video_info; } ;
typedef  TYPE_2__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLUE ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  GL_RED ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_RGB565 ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_SWIZZLE_B ; 
 int /*<<< orphan*/  GL_TEXTURE_SWIZZLE_R ; 
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNPACK_ROW_LENGTH ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT_5_6_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static void FUNC8(gl_core_t *gl,
                                       struct gl_core_streamed_texture *streamed,
                                       const void *frame, unsigned width, unsigned height, unsigned pitch)
{
   if (width != streamed->width || height != streamed->height)
   {
      if (streamed->tex != 0)
         FUNC2(1, &streamed->tex);
      FUNC3(1, &streamed->tex);
      FUNC1(GL_TEXTURE_2D, streamed->tex);
      FUNC6(GL_TEXTURE_2D, 1, gl->video_info.rgb32 ? GL_RGBA8 : GL_RGB565,
                     width, height);
      streamed->width = width;
      streamed->height = height;

      if (gl->video_info.rgb32)
      {
         FUNC5(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_R, GL_BLUE);
         FUNC5(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_B, GL_RED);
      }
   }
   else
      FUNC1(GL_TEXTURE_2D, streamed->tex);

   FUNC0(GL_PIXEL_UNPACK_BUFFER, 0);
   if (gl->video_info.rgb32)
   {
      FUNC4(GL_UNPACK_ROW_LENGTH, pitch >> 2);
      FUNC4(GL_UNPACK_ALIGNMENT, 4);
      FUNC7(GL_TEXTURE_2D, 0, 0, 0,
                      width, height, GL_RGBA, GL_UNSIGNED_BYTE, frame);
   }
   else
   {
      FUNC4(GL_UNPACK_ROW_LENGTH, pitch >> 1);
      FUNC4(GL_UNPACK_ALIGNMENT, 2);
      FUNC7(GL_TEXTURE_2D, 0, 0, 0,
                      width, height, GL_RGB, GL_UNSIGNED_SHORT_5_6_5, frame);
   }
}