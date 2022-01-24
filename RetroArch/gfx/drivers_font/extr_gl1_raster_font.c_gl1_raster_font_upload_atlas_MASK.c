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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {size_t tex_width; int /*<<< orphan*/  tex_height; TYPE_1__* atlas; } ;
typedef  TYPE_2__ gl1_raster_t ;
struct TYPE_4__ {unsigned int height; unsigned int width; int /*<<< orphan*/ * buffer; } ;
typedef  void* GLint ;
typedef  void* GLenum ;

/* Variables and functions */
 void* GL_LUMINANCE_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static bool FUNC4(gl1_raster_t *font)
{
   unsigned i, j;
   GLint  gl_internal                   = GL_LUMINANCE_ALPHA;
   GLenum gl_format                     = GL_LUMINANCE_ALPHA;
   size_t ncomponents                   = 2;
   uint8_t       *tmp                   = NULL;

   tmp = (uint8_t*)FUNC0(font->tex_height, font->tex_width * ncomponents);

   switch (ncomponents)
   {
      case 1:
         for (i = 0; i < font->atlas->height; ++i)
         {
            const uint8_t *src = &font->atlas->buffer[i * font->atlas->width];
            uint8_t       *dst = &tmp[i * font->tex_width * ncomponents];

            FUNC3(dst, src, font->atlas->width);
         }
         break;
      case 2:
         for (i = 0; i < font->atlas->height; ++i)
         {
            const uint8_t *src = &font->atlas->buffer[i * font->atlas->width];
            uint8_t       *dst = &tmp[i * font->tex_width * ncomponents];

            for (j = 0; j < font->atlas->width; ++j)
            {
               *dst++ = 0xff;
               *dst++ = *src++;
            }
         }
         break;
   }

   FUNC2(GL_TEXTURE_2D, 0, gl_internal, font->tex_width, font->tex_height,
         0, gl_format, GL_UNSIGNED_BYTE, tmp);

   FUNC1(tmp);

   return true;
}