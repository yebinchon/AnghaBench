
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scaler_ctx {int dummy; } ;
struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct TYPE_5__ {int* pbo_readback_valid; size_t pbo_readback_index; int * readback_buffer_screenshot; int * pbo_readback; struct scaler_ctx pbo_readback_scaler; scalar_t__ pbo_readback_enable; TYPE_1__ vp; } ;
typedef TYPE_2__ gl_core_t ;


 int GL_MAP_READ_BIT ;
 int GL_PIXEL_PACK_BUFFER ;
 int free (int *) ;
 int glBindBuffer (int ,int ) ;
 void* glMapBufferRange (int ,int ,unsigned int,int ) ;
 int glUnmapBuffer (int ) ;
 int gl_core_context_bind_hw_render (TYPE_2__*,int) ;
 int * malloc (unsigned int) ;
 int scaler_ctx_scale_direct (struct scaler_ctx*,int *,void const*) ;
 int video_driver_cached_frame () ;
 int video_frame_convert_rgba_to_bgr (void const*,int *,unsigned int) ;

__attribute__((used)) static bool gl_core_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   gl_core_t *gl = (gl_core_t*)data;
   unsigned num_pixels = 0;

   if (!gl)
      return 0;

   gl_core_context_bind_hw_render(gl, 0);
   num_pixels = gl->vp.width * gl->vp.height;

   if (gl->pbo_readback_enable)
   {
      const void *ptr = ((void*)0);
      struct scaler_ctx *ctx = &gl->pbo_readback_scaler;



      if (!gl->pbo_readback_valid[gl->pbo_readback_index])
         goto error;

      gl->pbo_readback_valid[gl->pbo_readback_index] = 0;
      glBindBuffer(GL_PIXEL_PACK_BUFFER, gl->pbo_readback[gl->pbo_readback_index]);

      ptr = glMapBufferRange(GL_PIXEL_PACK_BUFFER, 0, num_pixels * sizeof(uint32_t), GL_MAP_READ_BIT);
      scaler_ctx_scale_direct(ctx, buffer, ptr);
      glUnmapBuffer(GL_PIXEL_PACK_BUFFER);
      glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
   }
   else
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

   gl_core_context_bind_hw_render(gl, 1);
   return 1;

error:
   gl_core_context_bind_hw_render(gl, 1);
   return 0;
}
