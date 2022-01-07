
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fbo_inited; int fbo_feedback_enable; scalar_t__ fbo_feedback; scalar_t__ fbo_feedback_texture; scalar_t__ fbo_feedback_pass; } ;
typedef TYPE_1__ gl_t ;
struct TYPE_6__ {int fbo_pass; scalar_t__* fbo; scalar_t__* fbo_texture; } ;
typedef TYPE_2__ gl2_renderchain_data_t ;


 int gl2_delete_fb (int,scalar_t__*) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static void gl2_renderchain_deinit_fbo(gl_t *gl,
      gl2_renderchain_data_t *chain)
{
   if (gl)
   {
      if (gl->fbo_feedback)
         gl2_delete_fb(1, &gl->fbo_feedback);
      if (gl->fbo_feedback_texture)
         glDeleteTextures(1, &gl->fbo_feedback_texture);

      gl->fbo_inited = 0;
      gl->fbo_feedback_enable = 0;
      gl->fbo_feedback_pass = 0;
      gl->fbo_feedback_texture = 0;
      gl->fbo_feedback = 0;
   }

   if (chain)
   {
      gl2_delete_fb(chain->fbo_pass, chain->fbo);
      glDeleteTextures(chain->fbo_pass, chain->fbo_texture);

      memset(chain->fbo_texture, 0, sizeof(chain->fbo_texture));
      memset(chain->fbo, 0, sizeof(chain->fbo));

      chain->fbo_pass = 0;
   }
}
