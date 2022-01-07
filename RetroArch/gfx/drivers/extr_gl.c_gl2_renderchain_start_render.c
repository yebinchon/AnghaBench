
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_9__ {int const* vertex; } ;
struct TYPE_10__ {size_t tex_index; TYPE_2__ coords; TYPE_1__* fbo_rect; int * texture; } ;
typedef TYPE_3__ gl_t ;
struct TYPE_11__ {scalar_t__ has_srgb_fbo; int * fbo; } ;
typedef TYPE_4__ gl2_renderchain_data_t ;
struct TYPE_8__ {int img_height; int img_width; } ;
typedef int GLfloat ;


 int GL_FRAMEBUFFER_SRGB ;
 int GL_TEXTURE_2D ;
 int gl2_bind_fb (int ) ;
 int gl2_set_viewport (TYPE_3__*,int *,int ,int ,int,int) ;
 int glBindTexture (int ,int ) ;
 int glEnable (int ) ;

__attribute__((used)) static void gl2_renderchain_start_render(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      video_frame_info_t *video_info)
{



   static const GLfloat fbo_vertexes[] = {
      0, 0,
      1, 0,
      0, 1,
      1, 1
   };
   glBindTexture(GL_TEXTURE_2D, gl->texture[gl->tex_index]);
   gl2_bind_fb(chain->fbo[0]);

   gl2_set_viewport(gl,
         video_info, gl->fbo_rect[0].img_width,
         gl->fbo_rect[0].img_height, 1, 0);





   gl->coords.vertex = fbo_vertexes;





}
