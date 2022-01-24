#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int video_smooth; } ;
struct TYPE_12__ {TYPE_1__ bools; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_11__ {int smooth; } ;
struct TYPE_13__ {scalar_t__ tex_min_filter; scalar_t__ wrap_mode; unsigned int textures; size_t tex_index; int /*<<< orphan*/ * texture; int /*<<< orphan*/  tex_mag_filter; int /*<<< orphan*/  tex_mipmap; TYPE_3__ video_info; int /*<<< orphan*/  shader_data; TYPE_2__* shader; } ;
typedef  TYPE_5__ gl_t ;
typedef  enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;
struct TYPE_10__ {int (* wrap_type ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* mipmap_input ) (int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  (* filter_type ) (int /*<<< orphan*/ ,int,int*) ;} ;
typedef  scalar_t__ GLuint ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 scalar_t__ GL_LINEAR ; 
 scalar_t__ GL_LINEAR_MIPMAP_LINEAR ; 
 scalar_t__ GL_NEAREST ; 
 scalar_t__ GL_NEAREST_MIPMAP_NEAREST ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC9(gl_t *gl)
{
   unsigned i, mip_level;
   GLenum wrap_mode;
   GLuint new_filt;
   enum gfx_wrap_type wrap_type;
   bool smooth                       = false;
   settings_t *settings              = FUNC0();

   FUNC1(gl, false);

   if (!gl->shader->filter_type(gl->shader_data,
            1, &smooth))
      smooth             = settings->bools.video_smooth;

   mip_level             = 1;
   wrap_type             = gl->shader->wrap_type(gl->shader_data, 1);
   wrap_mode             = FUNC3(wrap_type);
   gl->tex_mipmap        = gl->shader->mipmap_input(gl->shader_data, mip_level);
   gl->video_info.smooth = smooth;
   new_filt              = gl->tex_mipmap ? (smooth ?
         GL_LINEAR_MIPMAP_LINEAR : GL_NEAREST_MIPMAP_NEAREST)
      : (smooth ? GL_LINEAR : GL_NEAREST);

   if (new_filt == gl->tex_min_filter && wrap_mode == gl->wrap_mode)
      return;

   gl->tex_min_filter    = new_filt;
   gl->tex_mag_filter    = FUNC2(gl->tex_min_filter);
   gl->wrap_mode         = wrap_mode;

   for (i = 0; i < gl->textures; i++)
   {
      if (!gl->texture[i])
         continue;

      FUNC5(gl->texture[i], gl->wrap_mode, gl->tex_mag_filter,
            gl->tex_min_filter);
   }

   FUNC4(GL_TEXTURE_2D, gl->texture[gl->tex_index]);
   FUNC1(gl, true);
}