#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {scalar_t__ extra; int /*<<< orphan*/  payload; } ;
typedef  TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;
struct TYPE_5__ {int header_bytes_to_write; int nal_header; int flags; int /*<<< orphan*/  nal_unit_size; } ;
typedef  TYPE_2__ H264_PAYLOAD_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRAGMENT_UNIT_HEADER_END ; 
 int /*<<< orphan*/  FRAGMENT_UNIT_HEADER_START ; 
 int /*<<< orphan*/  H264F_INSIDE_FRAGMENT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
#define  NAL_UNIT_FU_A 133 
#define  NAL_UNIT_FU_B 132 
 int NAL_UNIT_FZERO_MASK ; 
#define  NAL_UNIT_MTAP16 131 
#define  NAL_UNIT_MTAP24 130 
#define  NAL_UNIT_STAP_A 129 
#define  NAL_UNIT_STAP_B 128 
 int NAL_UNIT_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module)
{
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   H264_PAYLOAD_T *extra = (H264_PAYLOAD_T *)t_module->extra;
   uint8_t unit_header;
   uint8_t fragment_header;

   /* Read the NAL unit type and process as necessary */
   unit_header = FUNC1(p_ctx, payload, 8, "nal_unit_header");

   /* When the top bit is set, the NAL unit is invalid */
   if (unit_header & NAL_UNIT_FZERO_MASK)
   {
      FUNC5(p_ctx, "H.264: Invalid NAL unit (top bit of header set)");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   /* In most cases, a new packet means a new NAL unit, which will need a start code and the header */
   extra->header_bytes_to_write = 5;
   extra->nal_header = unit_header;
   extra->nal_unit_size = FUNC0(p_ctx, payload);

   switch (unit_header & NAL_UNIT_TYPE_MASK)
   {
   case NAL_UNIT_STAP_A:
      /* Single Time Aggregation Packet A */
      FUNC4(extra->flags, H264F_INSIDE_FRAGMENT);
      /* Trigger reading NAL unit length and header */
      extra->nal_unit_size = 0;
      break;

   case NAL_UNIT_FU_A:
      /* Fragementation Unit A */
      fragment_header = FUNC1(p_ctx, payload, 8, "fragment_header");
      extra->nal_unit_size--;

      if (FUNC2(fragment_header, FRAGMENT_UNIT_HEADER_START) ||
            FUNC3(extra->flags, H264F_INSIDE_FRAGMENT))
      {
         /* This is a continuation packet, prevent start code and header from being output */
         extra->header_bytes_to_write = 0;

         /* If this is the end of a fragment, the next FU will be a new one */
         if (FUNC3(fragment_header, FRAGMENT_UNIT_HEADER_END))
            FUNC4(extra->flags, H264F_INSIDE_FRAGMENT);
      } else {
         /* Start of a new fragment. */
         FUNC7(extra->flags, H264F_INSIDE_FRAGMENT);

         /* Merge type from fragment header and the rest from NAL unit header to form real NAL unit header */
         fragment_header &= NAL_UNIT_TYPE_MASK;
         fragment_header |= (unit_header & ~NAL_UNIT_TYPE_MASK);
         extra->nal_header = fragment_header;
      }
      break;

   case NAL_UNIT_STAP_B:
   case NAL_UNIT_MTAP16:
   case NAL_UNIT_MTAP24:
   case NAL_UNIT_FU_B:
      FUNC6(p_ctx, "H.264: Unsupported RTP NAL unit type: %u", unit_header & NAL_UNIT_TYPE_MASK);
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   default:
      /* Single NAL unit case */
      FUNC4(extra->flags, H264F_INSIDE_FRAGMENT);
   }

   return VC_CONTAINER_SUCCESS;
}