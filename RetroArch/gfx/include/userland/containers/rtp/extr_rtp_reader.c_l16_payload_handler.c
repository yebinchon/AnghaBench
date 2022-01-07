
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {int size; int * data; } ;
typedef TYPE_1__ VC_CONTAINER_PACKET_T ;


 int VC_CONTAINER_READ_FLAG_INFO ;
 int VC_CONTAINER_READ_FLAG_SKIP ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ generic_payload_handler (int *,int *,TYPE_1__*,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T l16_payload_handler(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      VC_CONTAINER_PACKET_T *p_packet,
      uint32_t flags)
{
   VC_CONTAINER_STATUS_T status;


   status = generic_payload_handler(p_ctx, track, p_packet, flags);
   if (status != VC_CONTAINER_SUCCESS)
      return status;

   if (p_packet && !(flags & (VC_CONTAINER_READ_FLAG_SKIP | VC_CONTAINER_READ_FLAG_INFO)))
   {
      uint8_t *ptr, *end_ptr;


      p_packet->size &= ~1;


      for (ptr = p_packet->data, end_ptr = ptr + p_packet->size; ptr < end_ptr; ptr += 2)
      {
         uint8_t high_byte = ptr[0];
         ptr[0] = ptr[1];
         ptr[1] = high_byte;
      }
   }

   return status;
}
