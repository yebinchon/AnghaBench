#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct video_shader {TYPE_1__* lut; int /*<<< orphan*/  luts; } ;
struct TYPE_2__ {int /*<<< orphan*/  wrap; int /*<<< orphan*/  filter; int /*<<< orphan*/  mipmap; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_MAX_TEXTURES ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 

bool FUNC4(
      const void *shader_data,
      GLuint *textures_lut)
{
   unsigned i;
   const struct video_shader *shader =
      (const struct video_shader*)shader_data;
   unsigned num_luts                 = FUNC0(shader->luts, GFX_MAX_TEXTURES);

   if (!shader->luts)
      return true;

   FUNC3(num_luts, textures_lut);

   for (i = 0; i < num_luts; i++)
   {
      if (!FUNC1(
               shader->lut[i].path,
               shader->lut[i].mipmap,
               shader->lut[i].filter,
               shader->lut[i].wrap,
               i, textures_lut))
         return false;
   }

   FUNC2(GL_TEXTURE_2D, 0);
   return true;
}