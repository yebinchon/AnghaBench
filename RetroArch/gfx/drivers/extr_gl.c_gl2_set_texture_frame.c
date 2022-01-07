
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ menu_linear_filter; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {float menu_texture_alpha; size_t tex_index; int * texture; int menu_texture; } ;
typedef TYPE_3__ gl_t ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;


 int GL_TEXTURE_2D ;
 int RARCH_WRAP_EDGE ;
 int TEXTURE_FILTER_LINEAR ;
 int TEXTURE_FILTER_NEAREST ;
 TYPE_2__* config_get_ptr () ;
 int gl2_context_bind_hw_render (TYPE_3__*,int) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int gl_load_texture_data (int ,int ,int,int ,unsigned int,unsigned int,void const*,unsigned int) ;
 int video_pixel_get_alignment (unsigned int) ;

__attribute__((used)) static void gl2_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   enum texture_filter_type menu_filter;
   settings_t *settings = config_get_ptr();
   unsigned base_size = rgb32 ? sizeof(uint32_t) : sizeof(uint16_t);
   gl_t *gl = (gl_t*)data;
   if (!gl)
      return;

   gl2_context_bind_hw_render(gl, 0);

   menu_filter = settings->bools.menu_linear_filter ? TEXTURE_FILTER_LINEAR : TEXTURE_FILTER_NEAREST;

   if (!gl->menu_texture)
      glGenTextures(1, &gl->menu_texture);

   gl_load_texture_data(gl->menu_texture,
         RARCH_WRAP_EDGE, menu_filter,
         video_pixel_get_alignment(width * base_size),
         width, height, frame,
         base_size);

   gl->menu_texture_alpha = alpha;
   glBindTexture(GL_TEXTURE_2D, gl->texture[gl->tex_index]);

   gl2_context_bind_hw_render(gl, 1);
}
