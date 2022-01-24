#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tex_buf3; int /*<<< orphan*/ * tex; int /*<<< orphan*/  tex_buf2; int /*<<< orphan*/  tex_buf1; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FLOAT ; 
 scalar_t__ GL_NEAREST ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  IMAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  texCoords ; 

__attribute__((used)) static void FUNC8(CUBE_STATE_T *state)
{
   // load three texture buffers but use them on six OGL|ES texture surfaces
   FUNC7(state);
   FUNC3(6, &state->tex[0]);

   // setup first texture
   FUNC0(GL_TEXTURE_2D, state->tex[0]);
   FUNC5(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf1);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);

   // setup second texture - reuse first image
   FUNC0(GL_TEXTURE_2D, state->tex[1]);
   FUNC5(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf1);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);

   // third texture
   FUNC0(GL_TEXTURE_2D, state->tex[2]);
   FUNC5(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf2);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);

   // fourth texture  - reuse second image
   FUNC0(GL_TEXTURE_2D, state->tex[3]);
   FUNC5(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf2);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);

   //fifth texture
   FUNC0(GL_TEXTURE_2D, state->tex[4]);
   FUNC5(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf3);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);

   // sixth texture  - reuse third image
   FUNC0(GL_TEXTURE_2D, state->tex[5]);
   FUNC5(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf3);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
   FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);

   // setup overall texture environment
   FUNC4(2, GL_FLOAT, 0, texCoords);
   FUNC2(GL_TEXTURE_COORD_ARRAY);

   FUNC1(GL_TEXTURE_2D);
}