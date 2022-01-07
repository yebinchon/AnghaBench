
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;
struct TYPE_26__ {TYPE_4__* format; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_27__ {long long duration; TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_28__ {int version; int channels; int xing_toc_valid; int data_size; int num_frames; int bitrate; int sample_rate; int frame_size_samples; scalar_t__* xing_toc; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_25__ {TYPE_3__* type; } ;
struct TYPE_23__ {long long gap_delay; scalar_t__ gap_padding; } ;
struct TYPE_24__ {TYPE_2__ audio; } ;
struct TYPE_22__ {TYPE_7__* module; } ;


 int INT64_C (int) ;
 scalar_t__ MPGA_XING_HAS_BYTES ;
 scalar_t__ MPGA_XING_HAS_FRAMES ;
 scalar_t__ MPGA_XING_HAS_QUALITY ;
 scalar_t__ MPGA_XING_HAS_TOC ;
 int PEEK_BYTES (TYPE_6__*,int *,int) ;
 int PEEK_BYTES_AT (TYPE_6__*,int ,int *,int) ;
 int READ_BYTES (TYPE_6__*,scalar_t__*,int) ;
 scalar_t__ READ_U24 (TYPE_6__*,char*) ;
 scalar_t__ READ_U32 (TYPE_6__*,char*) ;
 int SEEK (TYPE_6__*,int ) ;
 int SKIP_BYTES (TYPE_6__*,int ) ;
 int SKIP_FOURCC (TYPE_6__*,char*) ;
 int SKIP_STRING (TYPE_6__*,int,char*) ;
 int SKIP_U16 (TYPE_6__*,char*) ;
 int SKIP_U32 (TYPE_6__*,char*) ;
 int SKIP_U8 (TYPE_6__*,char*) ;
 int STREAM_POSITION (TYPE_6__*) ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_NOT_FOUND ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mpga_read_vbr_headers( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[0];
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_NOT_FOUND;
   uint32_t peek_buf[1];
   int64_t offset, start = STREAM_POSITION(p_ctx);


   offset = (module->version == 1) ? ((module->channels == 1) ? INT64_C(21) : INT64_C(36)) :
      ((module->channels == 1) ? INT64_C(13) : INT64_C(21));

   if (PEEK_BYTES_AT(p_ctx, offset, (uint8_t*)peek_buf, 4) != 4)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   if (peek_buf[0] == VC_FOURCC('X','i','n','g') || peek_buf[0] == VC_FOURCC('I','n','f','o'))
   {
      uint32_t flags = 0, num_frames = 0, data_size = 0;



      SKIP_BYTES(p_ctx, offset);

      SKIP_FOURCC(p_ctx, "XING");
      flags = READ_U32(p_ctx, "XING flags");

      if (flags & MPGA_XING_HAS_FRAMES)
         num_frames = READ_U32(p_ctx, "XING frames");

      if (flags & MPGA_XING_HAS_BYTES)
         data_size = READ_U32(p_ctx, "XING bytes");

      if (flags & MPGA_XING_HAS_TOC)
      {
         READ_BYTES(p_ctx, module->xing_toc, sizeof(module->xing_toc));

         if (num_frames) module->xing_toc_valid = 1;

         module->xing_toc[0] = 0;
      }

      if (flags & MPGA_XING_HAS_QUALITY)
         SKIP_U32(p_ctx, "XING quality");

      module->data_size = data_size;
      module->num_frames = num_frames;

      if (module->num_frames && module->data_size)
      {

         module->bitrate =
            module->data_size * module->sample_rate * 8 / (module->num_frames * module->frame_size_samples);
      }

      p_ctx->duration = (module->num_frames * module->frame_size_samples * 1000000LL) / module->sample_rate;


      if (PEEK_BYTES(p_ctx, (uint8_t*)peek_buf, 4) != 4)
         return VC_CONTAINER_ERROR_FORMAT_INVALID;

      if (peek_buf[0] == VC_FOURCC('L','A','M','E'))
      {
         uint32_t encoder_delay;

         SKIP_FOURCC(p_ctx, "LAME");
         SKIP_STRING(p_ctx, 5, "LAME encoder version");
         SKIP_U8(p_ctx, "LAME tag revision/VBR method");
         SKIP_U8(p_ctx, "LAME LP filter value");
         SKIP_U32(p_ctx, "LAME peak signal amplitude");
         SKIP_U16(p_ctx, "LAME radio replay gain");
         SKIP_U16(p_ctx, "LAME audiophile replay gain");
         SKIP_U8(p_ctx, "LAME encoder flags");
         SKIP_U8(p_ctx, "LAME ABR/minimal bitrate");
         encoder_delay = READ_U24(p_ctx, "LAME encoder delay/padding");
         SKIP_U8(p_ctx, "LAME misc");
         SKIP_U8(p_ctx, "LAME MP3 gain");
         SKIP_U16(p_ctx, "LAME presets and surround info");
         SKIP_U32(p_ctx, "LAME music length");
         SKIP_U16(p_ctx, "LAME music CRC");
         SKIP_U16(p_ctx, "LAME tag CRC");
         track->format->type->audio.gap_delay = (encoder_delay >> 12) + module->frame_size_samples;
         track->format->type->audio.gap_padding = encoder_delay & 0xfff;
      }

      SEEK(p_ctx, start);
      status = VC_CONTAINER_SUCCESS;
   }



   return status;
}
