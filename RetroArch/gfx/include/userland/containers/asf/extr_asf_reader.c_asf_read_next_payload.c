
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {scalar_t__ subpayload_size; scalar_t__ payload_size; int current_offset; int media_object_off; int current_payload; } ;
typedef TYPE_1__ ASF_PACKET_STATE ;


 scalar_t__ READ_BYTES (int *,int *,scalar_t__) ;
 scalar_t__ SKIP_BYTES (int *,scalar_t__) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_next_payload( VC_CONTAINER_T *p_ctx,
   ASF_PACKET_STATE *p_state, uint8_t *p_data, uint32_t *pi_size )
{
   uint32_t subpayload_size = p_state->subpayload_size;

   if(p_data && *pi_size < subpayload_size) subpayload_size = *pi_size;

   if(!p_state->subpayload_size)
      return VC_CONTAINER_SUCCESS;

   p_state->payload_size -= subpayload_size;
   if(!p_state->payload_size) p_state->current_payload++;
   p_state->subpayload_size -= subpayload_size;
   p_state->media_object_off += subpayload_size;

   if(p_data) *pi_size = READ_BYTES(p_ctx, p_data, subpayload_size);
   else *pi_size = SKIP_BYTES(p_ctx, subpayload_size);

   p_state->current_offset += subpayload_size;

   if(*pi_size!= subpayload_size)
      return STREAM_STATUS(p_ctx);

   return VC_CONTAINER_SUCCESS;
}
