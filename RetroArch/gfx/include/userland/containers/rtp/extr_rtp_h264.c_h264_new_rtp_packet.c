
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ extra; int payload; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_BITS_T ;
struct TYPE_5__ {int header_bytes_to_write; int nal_header; int flags; int nal_unit_size; } ;
typedef TYPE_2__ H264_PAYLOAD_T ;


 int BITS_BYTES_AVAILABLE (int *,int *) ;
 int BITS_READ_U8 (int *,int *,int,char*) ;
 int BIT_IS_CLEAR (int,int ) ;
 int BIT_IS_SET (int,int ) ;
 int CLEAR_BIT (int,int ) ;
 int FRAGMENT_UNIT_HEADER_END ;
 int FRAGMENT_UNIT_HEADER_START ;
 int H264F_INSIDE_FRAGMENT ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,int) ;


 int NAL_UNIT_FZERO_MASK ;




 int NAL_UNIT_TYPE_MASK ;
 int SET_BIT (int,int ) ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T h264_new_rtp_packet(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module)
{
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   H264_PAYLOAD_T *extra = (H264_PAYLOAD_T *)t_module->extra;
   uint8_t unit_header;
   uint8_t fragment_header;


   unit_header = BITS_READ_U8(p_ctx, payload, 8, "nal_unit_header");


   if (unit_header & NAL_UNIT_FZERO_MASK)
   {
      LOG_DEBUG(p_ctx, "H.264: Invalid NAL unit (top bit of header set)");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }


   extra->header_bytes_to_write = 5;
   extra->nal_header = unit_header;
   extra->nal_unit_size = BITS_BYTES_AVAILABLE(p_ctx, payload);

   switch (unit_header & NAL_UNIT_TYPE_MASK)
   {
   case 129:

      CLEAR_BIT(extra->flags, H264F_INSIDE_FRAGMENT);

      extra->nal_unit_size = 0;
      break;

   case 133:

      fragment_header = BITS_READ_U8(p_ctx, payload, 8, "fragment_header");
      extra->nal_unit_size--;

      if (BIT_IS_CLEAR(fragment_header, FRAGMENT_UNIT_HEADER_START) ||
            BIT_IS_SET(extra->flags, H264F_INSIDE_FRAGMENT))
      {

         extra->header_bytes_to_write = 0;


         if (BIT_IS_SET(fragment_header, FRAGMENT_UNIT_HEADER_END))
            CLEAR_BIT(extra->flags, H264F_INSIDE_FRAGMENT);
      } else {

         SET_BIT(extra->flags, H264F_INSIDE_FRAGMENT);


         fragment_header &= NAL_UNIT_TYPE_MASK;
         fragment_header |= (unit_header & ~NAL_UNIT_TYPE_MASK);
         extra->nal_header = fragment_header;
      }
      break;

   case 128:
   case 131:
   case 130:
   case 132:
      LOG_ERROR(p_ctx, "H.264: Unsupported RTP NAL unit type: %u", unit_header & NAL_UNIT_TYPE_MASK);
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   default:

      CLEAR_BIT(extra->flags, H264F_INSIDE_FRAGMENT);
   }

   return VC_CONTAINER_SUCCESS;
}
