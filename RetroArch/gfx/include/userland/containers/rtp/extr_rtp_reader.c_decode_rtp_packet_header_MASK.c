#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int timestamp; int payload_type; int expected_ssrc; int timestamp_base; int /*<<< orphan*/  flags; int /*<<< orphan*/  payload; } ;
typedef  TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACK_HAS_MARKER ; 
 int /*<<< orphan*/  TRACK_SSRC_SET ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module)
{
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   uint32_t version, has_padding, has_extension, csrc_count, has_marker;
   uint32_t payload_type, ssrc;
   uint16_t seq_num;

   /* Break down fixed header area into component parts */
   version              = FUNC4(p_ctx, payload, 2, "Version");
   has_padding          = FUNC4(p_ctx, payload, 1, "Has padding");
   has_extension        = FUNC4(p_ctx, payload, 1, "Has extension");
   csrc_count           = FUNC4(p_ctx, payload, 4, "CSRC count");
   has_marker           = FUNC4(p_ctx, payload, 1, "Has marker");
   payload_type         = FUNC4(p_ctx, payload, 7, "Payload type");
   seq_num              = FUNC3(p_ctx, payload, 16, "Sequence number");
   t_module->timestamp  = FUNC4(p_ctx, payload, 32, "Timestamp");
   ssrc                 = FUNC4(p_ctx, payload, 32, "SSRC");

   /* If there was only a partial header, abort immediately */
   if (!FUNC9(p_ctx, payload))
      return;

   /* Validate version, payload type, sequence number and SSRC, if set */
   if (version != 2 || payload_type != t_module->payload_type)
   {
      FUNC2(p_ctx, payload);
      return;
   }
   if (FUNC10(t_module->flags, TRACK_SSRC_SET) && (ssrc != t_module->expected_ssrc))
   {
      FUNC12(p_ctx, "RTP: Unexpected SSRC (0x%8.8X)", ssrc);
      FUNC2(p_ctx, payload);
      return;
   }

   /* Check sequence number indicates packet is usable */
   if (!FUNC14(t_module, seq_num))
   {
      FUNC2(p_ctx, payload);
      return;
   }

   /* Adjust to account for padding, CSRCs and extension */
   if (has_padding)
   {
      VC_CONTAINER_BITS_T bit_stream;
      uint32_t available = FUNC0(p_ctx, payload);
      uint8_t padding;

      FUNC1(p_ctx, &bit_stream, payload);
      /* The last byte of the payload is the number of padding bytes, including itself */
      FUNC8(p_ctx, &bit_stream, available - 1, "Skip to padding length");
      padding = FUNC5(p_ctx, &bit_stream, 8, "Padding length");

      FUNC6(p_ctx, payload, padding, "Remove padding");
   }

   /* Each CSRC is 32 bits, so shift count up to skip the right number of bits */
   FUNC7(p_ctx, payload, csrc_count << 5, "CSRC section");

   if (has_extension)
   {
      uint32_t extension_bits;

      /* Extension header is 16-bit ID (which isn't needed), then 16-bit length in 32-bit words */
      FUNC7(p_ctx, payload, 16, "Extension ID");
      extension_bits = FUNC4(p_ctx, payload, 16, "Extension length") << 5;
      FUNC7(p_ctx, payload, extension_bits, "Extension data");
   }

   /* Record whether or not this RTP packet had the marker bit set */
   if (has_marker)
      FUNC13(t_module->flags, TRACK_HAS_MARKER);
   else
      FUNC11(t_module->flags, TRACK_HAS_MARKER);

   /* If it hasn't been set independently, use the first timestamp as a baseline */
   if (!t_module->timestamp_base)
      t_module->timestamp_base = t_module->timestamp;
   t_module->timestamp -= t_module->timestamp_base;
}