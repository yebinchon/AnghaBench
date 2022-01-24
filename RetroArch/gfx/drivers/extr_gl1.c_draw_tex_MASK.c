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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ tex; scalar_t__ menu_tex; scalar_t__ rotation; scalar_t__ menu_smooth; scalar_t__ smooth; scalar_t__ supports_bgra; } ;
typedef  TYPE_1__ gl1_t ;
typedef  scalar_t__ GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BGRA_EXT ; 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_REPEAT ; 
 int /*<<< orphan*/  GL_RGB8 ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_STENCIL_TEST ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNPACK_ROW_LENGTH ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,float,float,float) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(gl1_t *gl1, int pot_width, int pot_height, int width, int height, GLuint tex, const void *frame_to_copy)
{
   uint8_t *frame       = NULL;
   uint8_t *frame_rgba  = NULL;
   /* FIXME: For now, everything is uploaded as BGRA8888, I could not get 444 or 555 to work, and there is no 565 support in GL 1.1 either. */
   GLint internalFormat = GL_RGB8;
   GLenum format        = gl1->supports_bgra ? GL_BGRA_EXT : GL_RGBA;
   GLenum type          = GL_UNSIGNED_BYTE;

   float vertices[] = {
	   -1.0f, -1.0f, 0.0f,
	   -1.0f, 1.0f, 0.0f,
	   1.0f, -1.0f, 0.0f,
	   1.0f, 1.0f, 0.0f,
   };

   float colors[] = {
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f
   };

   float norm_width     = (1.0f / (float)pot_width) * (float)width;
   float norm_height    = (1.0f / (float)pot_height) * (float)height;
   
   float texcoords[] = {
      0.0f, 0.0f,
      0.0f, 0.0f,
      0.0f, 0.0f,
      0.0f, 0.0f
   };
   
   texcoords[1] = texcoords[5] = norm_height;
   texcoords[4] = texcoords[6] = norm_width;

   FUNC3(GL_DEPTH_TEST);
   FUNC3(GL_CULL_FACE);
   FUNC3(GL_STENCIL_TEST);
   FUNC3(GL_SCISSOR_TEST);
   FUNC6(GL_TEXTURE_2D);

   /* Multi-texture not part of GL 1.1 */
   /*glActiveTexture(GL_TEXTURE0);*/

#ifndef VITA
   FUNC10(GL_UNPACK_ALIGNMENT, 1);
   FUNC10(GL_UNPACK_ROW_LENGTH, pot_width);
#endif
   FUNC1(GL_TEXTURE_2D, tex);

   frame = (uint8_t*)frame_to_copy;
   if (!gl1->supports_bgra)
   {
      frame_rgba = (uint8_t*)FUNC18(pot_width * pot_height * 4);
      if (frame_rgba)
      {
         int x, y;
         for (y = 0; y < pot_height; y++)
         {
            for (x = 0; x < pot_width; x++)
            {
               int index             = (y * pot_width + x) * 4;
               frame_rgba[index + 2] = frame[index + 0];
               frame_rgba[index + 1] = frame[index + 1];
               frame_rgba[index + 0] = frame[index + 2];
               frame_rgba[index + 3] = frame[index + 3];
            }
         }
         frame = frame_rgba;
      }
   }

   FUNC15(GL_TEXTURE_2D, 0, internalFormat, pot_width, pot_height, 0, format, type, frame);
   if (frame_rgba)
       FUNC0(frame_rgba);

   if (tex == gl1->tex)
   {
      FUNC16(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (gl1->smooth ? GL_LINEAR : GL_NEAREST));
      FUNC16(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (gl1->smooth ? GL_LINEAR : GL_NEAREST));
   }
   else if (tex == gl1->menu_tex)
   {
      FUNC16(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (gl1->menu_smooth ? GL_LINEAR : GL_NEAREST));
      FUNC16(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (gl1->menu_smooth ? GL_LINEAR : GL_NEAREST));
   }

   FUNC16(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
   FUNC16(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

   FUNC9(GL_PROJECTION);
   FUNC12();
   FUNC8();

   FUNC9(GL_MODELVIEW);
   FUNC12();
   FUNC8();

   if (gl1->rotation && tex == gl1->tex)
      FUNC13(gl1->rotation, 0.0f, 0.0f, 1.0f);
   
   FUNC7(GL_COLOR_ARRAY);
   FUNC7(GL_VERTEX_ARRAY);
   FUNC7(GL_TEXTURE_COORD_ARRAY);
   
   FUNC2(4, GL_FLOAT, 0, colors);
   FUNC17(3, GL_FLOAT, 0, vertices);
   FUNC14(2, GL_FLOAT, 0, texcoords);

   FUNC5(GL_TRIANGLE_STRIP, 0, 4);
   
   FUNC4(GL_TEXTURE_COORD_ARRAY);
   FUNC4(GL_VERTEX_ARRAY);
   FUNC4(GL_COLOR_ARRAY);

   FUNC9(GL_MODELVIEW);
   FUNC11();
   FUNC9(GL_PROJECTION);
   FUNC11();
}