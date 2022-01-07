
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int coord; } ;
struct TYPE_5__ {unsigned int* last_width; size_t tex_index; unsigned int* last_height; int tex_w; int tex_h; int base_size; int textures; TYPE_1__ tex_info; scalar_t__ empty_buf; int texture_fmt; int texture_type; } ;
typedef TYPE_2__ gl_t ;


 int GL_TEXTURE_2D ;
 int GL_TEXTURE_REFERENCE_BUFFER_SCE ;
 int GL_UNPACK_ALIGNMENT ;
 int glBufferSubData (int ,int,int,scalar_t__) ;
 int glPixelStorei (int ,int ) ;
 int glTexSubImage2D (int ,int ,int ,int ,int,int,int ,int ,scalar_t__) ;
 int set_texture_coords (int ,float,float) ;
 int video_pixel_get_alignment (unsigned int) ;

__attribute__((used)) static void gl2_update_input_size(gl_t *gl, unsigned width,
      unsigned height, unsigned pitch, bool clear)
{
   float xamt, yamt;

   if ((width != gl->last_width[gl->tex_index] ||
            height != gl->last_height[gl->tex_index]) && gl->empty_buf)
   {


      gl->last_width[gl->tex_index] = width;
      gl->last_height[gl->tex_index] = height;

      if (clear)
      {
         glPixelStorei(GL_UNPACK_ALIGNMENT,
               video_pixel_get_alignment(width * sizeof(uint32_t)));






         glTexSubImage2D(GL_TEXTURE_2D,
               0, 0, 0, gl->tex_w, gl->tex_h, gl->texture_type,
               gl->texture_fmt, gl->empty_buf);

      }
   }


   else if ((width !=
            gl->last_width[(gl->tex_index + gl->textures - 1) % gl->textures]) ||
         (height !=
          gl->last_height[(gl->tex_index + gl->textures - 1) % gl->textures])) { }
   else
      return;

   xamt = (float)width / gl->tex_w;
   yamt = (float)height / gl->tex_h;
   set_texture_coords(gl->tex_info.coord, xamt, yamt);
}
