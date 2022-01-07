
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fbo_feedback_pass; int fbo_feedback_texture; scalar_t__ renderchain_data; scalar_t__ fbo_feedback_enable; } ;
typedef TYPE_1__ gl_t ;
struct TYPE_8__ {int fbo_pass; int * fbo_texture; } ;
typedef TYPE_2__ gl2_renderchain_data_t ;


 int GL_TEXTURE_2D ;
 int gl2_create_fbo_texture (TYPE_1__*,TYPE_2__*,int,int ) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;

__attribute__((used)) static void gl2_create_fbo_textures(gl_t *gl,
      gl2_renderchain_data_t *chain)
{
   int i;

   glGenTextures(chain->fbo_pass, chain->fbo_texture);

   for (i = 0; i < chain->fbo_pass; i++)
      gl2_create_fbo_texture(gl,
            (gl2_renderchain_data_t*)gl->renderchain_data,
            i, chain->fbo_texture[i]);

   if (gl->fbo_feedback_enable)
   {
      glGenTextures(1, &gl->fbo_feedback_texture);
      gl2_create_fbo_texture(gl,
            (gl2_renderchain_data_t*)gl->renderchain_data,
            gl->fbo_feedback_pass, gl->fbo_feedback_texture);
   }

   glBindTexture(GL_TEXTURE_2D, 0);
}
