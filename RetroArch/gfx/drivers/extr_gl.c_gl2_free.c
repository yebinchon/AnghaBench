
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int textures; scalar_t__ renderchain_data; scalar_t__ core_context_in_use; int pbo_readback_scaler; int * pbo_readback; scalar_t__ pbo_readback_enable; int scaler; int pbo; scalar_t__ menu_texture; scalar_t__* texture; int shader_data; TYPE_1__* shader; scalar_t__ have_sync; } ;
typedef TYPE_2__ gl_t ;
struct TYPE_17__ {int vao; } ;
typedef TYPE_3__ gl2_renderchain_data_t ;
struct TYPE_15__ {int (* deinit ) (int ) ;} ;


 int GL_TEXTURE_REFERENCE_BUFFER_SCE ;
 int font_driver_free_osd () ;
 int gl2_context_bind_hw_render (TYPE_2__*,int) ;
 int gl2_deinit_chain (TYPE_2__*) ;
 int gl2_destroy_resources (TYPE_2__*) ;
 int gl2_free_overlay (TYPE_2__*) ;
 int gl2_renderchain_deinit_fbo (TYPE_2__*,TYPE_3__*) ;
 int gl2_renderchain_deinit_hw_render (TYPE_2__*,TYPE_3__*) ;
 int gl2_renderchain_fence_free (TYPE_2__*,TYPE_3__*) ;
 int gl2_video_layout_free (TYPE_2__*) ;
 int glBindBuffer (int ,int ) ;
 int glBindVertexArray (int ) ;
 int glDeleteBuffers (int,int *) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int glDeleteVertexArrays (int,int *) ;
 int scaler_ctx_gen_reset (int *) ;
 int stub1 (int ) ;
 int video_context_driver_free () ;

__attribute__((used)) static void gl2_free(void *data)
{
   gl_t *gl = (gl_t*)data;
   if (!gl)
      return;





   gl2_context_bind_hw_render(gl, 0);

   if (gl->have_sync)
      gl2_renderchain_fence_free(gl,
            (gl2_renderchain_data_t*)
            gl->renderchain_data);

   font_driver_free_osd();

   gl->shader->deinit(gl->shader_data);

   glDeleteTextures(gl->textures, gl->texture);
   scaler_ctx_gen_reset(&gl->scaler);

   if (gl->pbo_readback_enable)
   {
      glDeleteBuffers(4, gl->pbo_readback);
      scaler_ctx_gen_reset(&gl->pbo_readback_scaler);
   }


   if (gl->core_context_in_use)
   {
      gl2_renderchain_data_t *chain = (gl2_renderchain_data_t*)
         gl->renderchain_data;

      glBindVertexArray(0);
      glDeleteVertexArrays(1, &chain->vao);
   }


   gl2_renderchain_deinit_fbo(gl, (gl2_renderchain_data_t*)gl->renderchain_data);
   gl2_renderchain_deinit_hw_render(gl, (gl2_renderchain_data_t*)gl->renderchain_data);
   gl2_deinit_chain(gl);

   video_context_driver_free();

   gl2_destroy_resources(gl);
}
