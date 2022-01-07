
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scaler_ctx {int dummy; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {int* pbo_readback_valid; size_t pbo_readback_index; int * readback_buffer_screenshot; struct scaler_ctx pbo_readback_scaler; TYPE_1__ vp; int * pbo_readback; scalar_t__ pbo_readback_enable; } ;
typedef TYPE_2__ gl_t ;


 int GL_MAP_READ_BIT ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_READ_ONLY ;
 int RARCH_ERR (char*) ;
 int free (int *) ;
 int gl2_context_bind_hw_render (TYPE_2__*,int) ;
 int glBindBuffer (int ,int ) ;
 scalar_t__ glMapBuffer (int ,int ) ;
 scalar_t__ glMapBufferRange (int ,int ,unsigned int,int ) ;
 int glUnmapBuffer (int ) ;
 int * malloc (unsigned int) ;
 int scaler_ctx_scale_direct (struct scaler_ctx*,int *,int const*) ;
 int video_driver_cached_frame () ;
 int video_frame_convert_rgba_to_bgr (void const*,int *,unsigned int) ;

__attribute__((used)) static bool gl2_renderchain_read_viewport(
      gl_t *gl,
      uint8_t *buffer, bool is_idle)
{
   unsigned num_pixels = 0;

   gl2_context_bind_hw_render(gl, 0);

   num_pixels = gl->vp.width * gl->vp.height;
   {
      gl->readback_buffer_screenshot = malloc(num_pixels * sizeof(uint32_t));

      if (!gl->readback_buffer_screenshot)
         goto error;

      if (!is_idle)
         video_driver_cached_frame();

      video_frame_convert_rgba_to_bgr(
            (const void*)gl->readback_buffer_screenshot,
            buffer,
            num_pixels);

      free(gl->readback_buffer_screenshot);
      gl->readback_buffer_screenshot = ((void*)0);
   }

   gl2_context_bind_hw_render(gl, 1);
   return 1;

error:
   gl2_context_bind_hw_render(gl, 1);

   return 0;
}
