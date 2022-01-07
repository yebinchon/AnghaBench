
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int timestamp; int payload_type; int expected_ssrc; int timestamp_base; int flags; int payload; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_BYTES_AVAILABLE (int *,int *) ;
 int BITS_COPY_STREAM (int *,int *,int *) ;
 int BITS_INVALIDATE (int *,int *) ;
 int BITS_READ_U16 (int *,int *,int,char*) ;
 int BITS_READ_U32 (int *,int *,int,char*) ;
 int BITS_READ_U8 (int *,int *,int,char*) ;
 int BITS_REDUCE_BYTES (int *,int *,int ,char*) ;
 int BITS_SKIP (int *,int *,int,char*) ;
 int BITS_SKIP_BYTES (int *,int *,int,char*) ;
 int BITS_VALID (int *,int *) ;
 scalar_t__ BIT_IS_SET (int ,int ) ;
 int CLEAR_BIT (int ,int ) ;
 int LOG_DEBUG (int *,char*,int) ;
 int SET_BIT (int ,int ) ;
 int TRACK_HAS_MARKER ;
 int TRACK_SSRC_SET ;
 int update_sequence_number (TYPE_1__*,int ) ;

__attribute__((used)) static void decode_rtp_packet_header(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module)
{
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   uint32_t version, has_padding, has_extension, csrc_count, has_marker;
   uint32_t payload_type, ssrc;
   uint16_t seq_num;


   version = BITS_READ_U32(p_ctx, payload, 2, "Version");
   has_padding = BITS_READ_U32(p_ctx, payload, 1, "Has padding");
   has_extension = BITS_READ_U32(p_ctx, payload, 1, "Has extension");
   csrc_count = BITS_READ_U32(p_ctx, payload, 4, "CSRC count");
   has_marker = BITS_READ_U32(p_ctx, payload, 1, "Has marker");
   payload_type = BITS_READ_U32(p_ctx, payload, 7, "Payload type");
   seq_num = BITS_READ_U16(p_ctx, payload, 16, "Sequence number");
   t_module->timestamp = BITS_READ_U32(p_ctx, payload, 32, "Timestamp");
   ssrc = BITS_READ_U32(p_ctx, payload, 32, "SSRC");


   if (!BITS_VALID(p_ctx, payload))
      return;


   if (version != 2 || payload_type != t_module->payload_type)
   {
      BITS_INVALIDATE(p_ctx, payload);
      return;
   }
   if (BIT_IS_SET(t_module->flags, TRACK_SSRC_SET) && (ssrc != t_module->expected_ssrc))
   {
      LOG_DEBUG(p_ctx, "RTP: Unexpected SSRC (0x%8.8X)", ssrc);
      BITS_INVALIDATE(p_ctx, payload);
      return;
   }


   if (!update_sequence_number(t_module, seq_num))
   {
      BITS_INVALIDATE(p_ctx, payload);
      return;
   }


   if (has_padding)
   {
      VC_CONTAINER_BITS_T bit_stream;
      uint32_t available = BITS_BYTES_AVAILABLE(p_ctx, payload);
      uint8_t padding;

      BITS_COPY_STREAM(p_ctx, &bit_stream, payload);

      BITS_SKIP_BYTES(p_ctx, &bit_stream, available - 1, "Skip to padding length");
      padding = BITS_READ_U8(p_ctx, &bit_stream, 8, "Padding length");

      BITS_REDUCE_BYTES(p_ctx, payload, padding, "Remove padding");
   }


   BITS_SKIP(p_ctx, payload, csrc_count << 5, "CSRC section");

   if (has_extension)
   {
      uint32_t extension_bits;


      BITS_SKIP(p_ctx, payload, 16, "Extension ID");
      extension_bits = BITS_READ_U32(p_ctx, payload, 16, "Extension length") << 5;
      BITS_SKIP(p_ctx, payload, extension_bits, "Extension data");
   }


   if (has_marker)
      SET_BIT(t_module->flags, TRACK_HAS_MARKER);
   else
      CLEAR_BIT(t_module->flags, TRACK_HAS_MARKER);


   if (!t_module->timestamp_base)
      t_module->timestamp_base = t_module->timestamp;
   t_module->timestamp -= t_module->timestamp_base;
}
