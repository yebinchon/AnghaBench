#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scaler_ctx {int dummy; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {int* pbo_readback_valid; size_t pbo_readback_index; int /*<<< orphan*/ * readback_buffer_screenshot; struct scaler_ctx pbo_readback_scaler; TYPE_1__ vp; int /*<<< orphan*/ * pbo_readback; scalar_t__ pbo_readback_enable; } ;
typedef  TYPE_2__ gl_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MAP_READ_BIT ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct scaler_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (void const*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static bool FUNC11(
      gl_t *gl,
      uint8_t *buffer, bool is_idle)
{
   unsigned                     num_pixels = 0;

   FUNC2(gl, false);

   num_pixels = gl->vp.width * gl->vp.height;

#ifdef HAVE_GL_ASYNC_READBACK
   if (gl->pbo_readback_enable)
   {
      const uint8_t *ptr  = NULL;

      /* Don't readback if we're in menu mode.
       * We haven't buffered up enough frames yet, come back later. */
      if (!gl->pbo_readback_valid[gl->pbo_readback_index])
         goto error;

      gl->pbo_readback_valid[gl->pbo_readback_index] = false;
      glBindBuffer(GL_PIXEL_PACK_BUFFER,
            gl->pbo_readback[gl->pbo_readback_index]);

#ifdef HAVE_OPENGLES3
      /* Slower path, but should work on all implementations at least. */
      ptr        = (const uint8_t*)glMapBufferRange(GL_PIXEL_PACK_BUFFER,
            0, num_pixels * sizeof(uint32_t), GL_MAP_READ_BIT);

      if (ptr)
      {
         unsigned y;
         for (y = 0; y < gl->vp.height; y++)
         {
            video_frame_convert_rgba_to_bgr(
                  (const void*)ptr,
                  buffer,
                  gl->vp.width);
         }
      }
#else
      ptr = (const uint8_t*)glMapBuffer(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);
      if (ptr)
      {
         struct scaler_ctx *ctx = &gl->pbo_readback_scaler;
         scaler_ctx_scale_direct(ctx, buffer, ptr);
      }
#endif

      if (!ptr)
      {
         RARCH_ERR("[GL]: Failed to map pixel unpack buffer.\n");
         goto error;
      }

      glUnmapBuffer(GL_PIXEL_PACK_BUFFER);
      glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
   }
   else
#endif
   {
      /* Use slow synchronous readbacks. Use this with plain screenshots
         as we don't really care about performance in this case. */

      /* GLES2 only guarantees GL_RGBA/GL_UNSIGNED_BYTE
       * readbacks so do just that.
       * GLES2 also doesn't support reading back data
       * from front buffer, so render a cached frame
       * and have gl_frame() do the readback while it's
       * in the back buffer.
       *
       * Keep codepath similar for GLES and desktop GL.
       */
      gl->readback_buffer_screenshot = FUNC7(num_pixels * sizeof(uint32_t));

      if (!gl->readback_buffer_screenshot)
         goto error;

      if (!is_idle)
         FUNC9();

      FUNC10(
            (const void*)gl->readback_buffer_screenshot,
            buffer,
            num_pixels);

      FUNC1(gl->readback_buffer_screenshot);
      gl->readback_buffer_screenshot = NULL;
   }

   FUNC2(gl, true);
   return true;

error:
   FUNC2(gl, true);

   return false;
}