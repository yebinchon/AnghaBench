
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ bokeh; scalar_t__ snow; scalar_t__ snow_simple; scalar_t__ ribbon_simple; scalar_t__ ribbon; scalar_t__ font; scalar_t__ alpha_blend; } ;
struct TYPE_13__ {scalar_t__ vao; scalar_t__ menu_texture; TYPE_1__ pipelines; TYPE_3__* textures; int * filter_chain; } ;
typedef TYPE_2__ gl_core_t ;
struct TYPE_14__ {scalar_t__ tex; } ;


 unsigned int GL_CORE_NUM_TEXTURES ;
 int free (TYPE_2__*) ;
 int glBindVertexArray (int ) ;
 int glDeleteProgram (scalar_t__) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int glDeleteVertexArrays (int,scalar_t__*) ;
 int gl_core_context_bind_hw_render (TYPE_2__*,int) ;
 int gl_core_deinit_fences (TYPE_2__*) ;
 int gl_core_deinit_hw_render (TYPE_2__*) ;
 int gl_core_deinit_pbo_readback (TYPE_2__*) ;
 int gl_core_filter_chain_free (int *) ;
 int gl_core_free_overlay (TYPE_2__*) ;
 int gl_core_free_scratch_vbos (TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void gl_core_destroy_resources(gl_core_t *gl)
{
   unsigned i;
   if (!gl)
      return;

   gl_core_context_bind_hw_render(gl, 0);

   if (gl->filter_chain)
      gl_core_filter_chain_free(gl->filter_chain);
   gl->filter_chain = ((void*)0);

   glBindVertexArray(0);
   if (gl->vao != 0)
      glDeleteVertexArrays(1, &gl->vao);

   for (i = 0; i < GL_CORE_NUM_TEXTURES; i++)
   {
      if (gl->textures[i].tex != 0)
         glDeleteTextures(1, &gl->textures[i].tex);
   }
   memset(gl->textures, 0, sizeof(gl->textures));

   if (gl->menu_texture != 0)
      glDeleteTextures(1, &gl->menu_texture);

   if (gl->pipelines.alpha_blend)
      glDeleteProgram(gl->pipelines.alpha_blend);
   if (gl->pipelines.font)
      glDeleteProgram(gl->pipelines.font);
   if (gl->pipelines.ribbon)
      glDeleteProgram(gl->pipelines.ribbon);
   if (gl->pipelines.ribbon_simple)
      glDeleteProgram(gl->pipelines.ribbon_simple);
   if (gl->pipelines.snow_simple)
      glDeleteProgram(gl->pipelines.snow_simple);
   if (gl->pipelines.snow)
      glDeleteProgram(gl->pipelines.snow);
   if (gl->pipelines.bokeh)
      glDeleteProgram(gl->pipelines.bokeh);





   gl_core_deinit_fences(gl);
   gl_core_deinit_pbo_readback(gl);
   gl_core_deinit_hw_render(gl);
   free(gl);
}
