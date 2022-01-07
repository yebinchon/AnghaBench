
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_info_t ;
typedef int uint32_t ;
struct TYPE_4__ {int tex_w; int tex_h; int base_size; int textures; size_t tex_index; int * texture; scalar_t__ renderchain_data; int tex_min_filter; int tex_mag_filter; int wrap_mode; scalar_t__ hw_render_use; int pbo; int texture_fmt; int texture_type; int internal_fmt; } ;
typedef TYPE_1__ gl_t ;
typedef int gl2_renderchain_data_t ;
typedef int GLenum ;


 int GL_CAPS_ARGB8 ;
 int GL_RGB ;
 int GL_RGBA ;
 int GL_STREAM_DRAW ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_REFERENCE_BUFFER_SCE ;
 int GL_UNSIGNED_BYTE ;
 int GL_UNSIGNED_SHORT_5_6_5 ;
 int RARCH_WARN (char*) ;
 int gl2_renderchain_init_texture_reference (TYPE_1__*,int *,unsigned int,int ,int ,int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBufferData (int ,int,int *,int ) ;
 int glGenBuffers (int,int *) ;
 int glGenTextures (int,int *) ;
 int gl_bind_texture (int ,int ,int ,int ) ;
 scalar_t__ gl_check_capability (int ) ;

__attribute__((used)) static void gl2_init_textures(gl_t *gl, const video_info_t *video)
{
   unsigned i;
   GLenum internal_fmt = gl->internal_fmt;
   GLenum texture_type = gl->texture_type;
   GLenum texture_fmt = gl->texture_fmt;
   glGenTextures(gl->textures, gl->texture);

   for (i = 0; i < gl->textures; i++)
   {
      gl_bind_texture(gl->texture[i], gl->wrap_mode, gl->tex_mag_filter,
            gl->tex_min_filter);

      gl2_renderchain_init_texture_reference(
            gl, (gl2_renderchain_data_t*)gl->renderchain_data,
            i, internal_fmt,
            texture_fmt, texture_type);
   }

   glBindTexture(GL_TEXTURE_2D, gl->texture[gl->tex_index]);
}
