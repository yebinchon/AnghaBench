
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ use_rgba; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int uint8_t ;
struct TYPE_10__ {size_t tex_w; size_t tex_h; size_t tex_index; size_t base_size; void const* conv_buffer; int texture_fmt; int texture_type; int scaler; int have_es2_compat; scalar_t__ support_unpack_row_length; } ;
typedef TYPE_2__ gl_t ;
struct TYPE_11__ {scalar_t__ egl_images; } ;
typedef TYPE_3__ gl2_renderchain_data_t ;
struct TYPE_12__ {unsigned int width; unsigned int height; unsigned int pitch; size_t index; int rgb32; scalar_t__* handle; void const* frame; } ;
typedef TYPE_4__ gfx_ctx_image_t ;
typedef void GLvoid ;
typedef int GLeglImageOES ;
typedef scalar_t__ EGLImageKHR ;


 scalar_t__ EGL_NO_IMAGE_KHR ;
 int GL_READ_WRITE ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_REFERENCE_BUFFER_SCE ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int RARCH_ERR (char*) ;
 int glEGLImageTargetTexture2DOES (int ,int ) ;
 scalar_t__ glMapBuffer (int ,int ) ;
 int glPixelStorei (int ,unsigned int) ;
 int glTexSubImage2D (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;
 int glUnmapBuffer (int ) ;
 int memcpy (int *,int const*,unsigned int const) ;
 int video_context_driver_write_to_image_buffer (TYPE_4__*) ;
 int video_frame_convert_argb8888_to_abgr8888 (int *,void const*,void const*,unsigned int,unsigned int,unsigned int) ;
 int video_frame_convert_rgb16_to_rgb32 (int *,void*,void const*,unsigned int,unsigned int,unsigned int) ;
 unsigned int video_pixel_get_alignment (unsigned int) ;

__attribute__((used)) static void gl2_renderchain_copy_frame(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      video_frame_info_t *video_info,
      const void *frame,
      unsigned width, unsigned height, unsigned pitch)
{
   {
      const GLvoid *data_buf = frame;
      glPixelStorei(GL_UNPACK_ALIGNMENT, video_pixel_get_alignment(pitch));

      if (gl->base_size == 2 && !gl->have_es2_compat)
      {





         video_frame_convert_rgb16_to_rgb32(
               &gl->scaler,
               gl->conv_buffer,
               frame,
               width,
               height,
               pitch);
         data_buf = gl->conv_buffer;
      }
      else
         glPixelStorei(GL_UNPACK_ROW_LENGTH, pitch / gl->base_size);

      glTexSubImage2D(GL_TEXTURE_2D,
            0, 0, 0, width, height, gl->texture_type,
            gl->texture_fmt, data_buf);

      glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
   }

}
