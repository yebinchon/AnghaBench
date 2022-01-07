
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_tex_info {int dummy; } ;
struct TYPE_5__ {int textures; size_t fbo_feedback_pass; void* fbo_feedback_texture; void* fbo_feedback; scalar_t__ fbo_feedback_enable; int * prev_info; } ;
typedef TYPE_1__ gl_t ;
struct TYPE_6__ {void** fbo_texture; void** fbo; } ;
typedef TYPE_2__ gl2_renderchain_data_t ;
typedef void* GLuint ;


 int memcpy (int *,struct video_tex_info const*,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void gl2_renderchain_bind_prev_texture(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      const struct video_tex_info *tex_info)
{
   memmove(gl->prev_info + 1, gl->prev_info,
         sizeof(*tex_info) * (gl->textures - 1));
   memcpy(&gl->prev_info[0], tex_info,
         sizeof(*tex_info));



   if (gl->fbo_feedback_enable)
   {
      GLuint tmp_fbo = gl->fbo_feedback;
      GLuint tmp_tex = gl->fbo_feedback_texture;
      gl->fbo_feedback = chain->fbo[gl->fbo_feedback_pass];
      gl->fbo_feedback_texture = chain->fbo_texture[gl->fbo_feedback_pass];
      chain->fbo[gl->fbo_feedback_pass] = tmp_fbo;
      chain->fbo_texture[gl->fbo_feedback_pass] = tmp_tex;
   }
}
