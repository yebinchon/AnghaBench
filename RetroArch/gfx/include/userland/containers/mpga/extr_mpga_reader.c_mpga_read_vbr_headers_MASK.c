#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_26__ {TYPE_4__* format; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_27__ {long long duration; TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_28__ {int version; int channels; int xing_toc_valid; int data_size; int num_frames; int bitrate; int sample_rate; int frame_size_samples; scalar_t__* xing_toc; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_25__ {TYPE_3__* type; } ;
struct TYPE_23__ {long long gap_delay; scalar_t__ gap_padding; } ;
struct TYPE_24__ {TYPE_2__ audio; } ;
struct TYPE_22__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MPGA_XING_HAS_BYTES ; 
 scalar_t__ MPGA_XING_HAS_FRAMES ; 
 scalar_t__ MPGA_XING_HAS_QUALITY ; 
 scalar_t__ MPGA_XING_HAS_TOC ; 
 int FUNC1 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (TYPE_6__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC14 (char,char,char,char) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC15( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[0];
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_NOT_FOUND;
   uint32_t peek_buf[1];
   int64_t offset, start = FUNC13(p_ctx);

   /* Look for XING header (immediately after layer 3 side information) */
   offset = (module->version == 1) ? ((module->channels == 1) ?  FUNC0(21) :  FUNC0(36)) :
      ((module->channels == 1) ?  FUNC0(13) :  FUNC0(21));

   if (FUNC2(p_ctx, offset, (uint8_t*)peek_buf, 4) != 4)
      return VC_CONTAINER_ERROR_FORMAT_INVALID; /* File would be way too small */

   if (peek_buf[0] == FUNC14('X','i','n','g') || peek_buf[0] == FUNC14('I','n','f','o'))
   {
      uint32_t flags = 0, num_frames = 0, data_size = 0;

      /* If the first frame has a XING header then we know it's a valid (but empty) audio
         frame so we safely parse the header whilst skipping to the next frame */
      FUNC7(p_ctx, offset); /* FIXME: we don't care about layer 3 side information? */

      FUNC8(p_ctx, "XING");
      flags = FUNC5(p_ctx, "XING flags");

      if (flags & MPGA_XING_HAS_FRAMES)
         num_frames = FUNC5(p_ctx, "XING frames");

      if (flags & MPGA_XING_HAS_BYTES)
         data_size = FUNC5(p_ctx, "XING bytes");

      if (flags & MPGA_XING_HAS_TOC)
      {
         FUNC3(p_ctx, module->xing_toc, sizeof(module->xing_toc));
         /* TOC is useful only if we know the number of frames */
         if (num_frames) module->xing_toc_valid = 1;
         /* Ensure time zero points to first frame even if TOC is broken */
         module->xing_toc[0] = 0;
      }

      if (flags & MPGA_XING_HAS_QUALITY)
         FUNC11(p_ctx, "XING quality");

      module->data_size = data_size;
      module->num_frames = num_frames;

      if (module->num_frames && module->data_size)
      {
         /* We can calculate average bitrate */
         module->bitrate =
            module->data_size * module->sample_rate * 8 / (module->num_frames * module->frame_size_samples);
      }

      p_ctx->duration = (module->num_frames * module->frame_size_samples * 1000000LL) / module->sample_rate;

      /* Look for additional LAME header (follows XING) */
      if (FUNC1(p_ctx, (uint8_t*)peek_buf, 4) != 4)
         return VC_CONTAINER_ERROR_FORMAT_INVALID; /* File would still be way too small */

      if (peek_buf[0] == FUNC14('L','A','M','E'))
      {
         uint32_t encoder_delay;

         FUNC8(p_ctx, "LAME");
         FUNC9(p_ctx, 5, "LAME encoder version");
         FUNC12(p_ctx, "LAME tag revision/VBR method");
         FUNC12(p_ctx, "LAME LP filter value");
         FUNC11(p_ctx, "LAME peak signal amplitude");
         FUNC10(p_ctx, "LAME radio replay gain");
         FUNC10(p_ctx, "LAME audiophile replay gain");
         FUNC12(p_ctx, "LAME encoder flags");
         FUNC12(p_ctx, "LAME ABR/minimal bitrate");
         encoder_delay = FUNC4(p_ctx, "LAME encoder delay/padding");
         FUNC12(p_ctx, "LAME misc");
         FUNC12(p_ctx, "LAME MP3 gain");
         FUNC10(p_ctx, "LAME presets and surround info");
         FUNC11(p_ctx, "LAME music length");
         FUNC10(p_ctx, "LAME music CRC");
         FUNC10(p_ctx, "LAME tag CRC");
         track->format->type->audio.gap_delay = (encoder_delay >> 12) + module->frame_size_samples;
         track->format->type->audio.gap_padding  = encoder_delay & 0xfff;
      }

      FUNC6(p_ctx, start);
      status = VC_CONTAINER_SUCCESS;
   }

   /* FIXME: if not success, try to read 'VBRI' header */

   return status;
}