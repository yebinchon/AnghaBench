
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hw_render_fbo_init; int textures; int hw_render_fbo; } ;
typedef TYPE_1__ gl_t ;
struct TYPE_7__ {int hw_render_depth; scalar_t__ hw_render_depth_init; } ;
typedef TYPE_2__ gl2_renderchain_data_t ;


 int gl2_context_bind_hw_render (TYPE_1__*,int) ;
 int gl2_delete_fb (int ,int ) ;
 int gl2_delete_rb (int ,int ) ;

__attribute__((used)) static void gl2_renderchain_deinit_hw_render(
      gl_t *gl,
      gl2_renderchain_data_t *chain)
{
   if (!gl)
      return;

   gl2_context_bind_hw_render(gl, 1);

   if (gl->hw_render_fbo_init)
      gl2_delete_fb(gl->textures, gl->hw_render_fbo);
   if (chain->hw_render_depth_init)
      gl2_delete_rb(gl->textures, chain->hw_render_depth);
   gl->hw_render_fbo_init = 0;

   gl2_context_bind_hw_render(gl, 0);
}
