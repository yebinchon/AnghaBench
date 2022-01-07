
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int payload; scalar_t__ extra; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_BITS_T ;
struct TYPE_5__ {int auxiliary_length; scalar_t__ dts_delta_length; scalar_t__ cts_delta_length; scalar_t__ index_length; scalar_t__ size_length; int au_headers; } ;
typedef TYPE_2__ MP4_PAYLOAD_T ;


 int BITS_CURRENT_POINTER (int *,int *) ;
 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_READ_U32 (int *,int *,int,char*) ;
 int BITS_SKIP_BYTES (int *,int *,int ,char*) ;
 int BITS_TO_BYTES (int ) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_new_rtp_packet(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module)
{
   VC_CONTAINER_BITS_T *payload = &t_module->payload;
   MP4_PAYLOAD_T *extra = (MP4_PAYLOAD_T *)t_module->extra;
   VC_CONTAINER_BITS_T *au_headers = &extra->au_headers;


   if (extra->size_length || extra->index_length || extra->cts_delta_length || extra->dts_delta_length)
   {
      uint32_t au_headers_length;


      au_headers_length = BITS_READ_U32(p_ctx, payload, 16, "AU headers length");
      au_headers_length = BITS_TO_BYTES(au_headers_length);


      BITS_INIT(p_ctx, au_headers, BITS_CURRENT_POINTER(p_ctx, payload), au_headers_length);
      BITS_SKIP_BYTES(p_ctx, &t_module->payload, au_headers_length, "Move payload past AU headers");
   }


   if (extra->auxiliary_length)
   {
      uint32_t auxiliary_data_size;

      auxiliary_data_size = BITS_READ_U32(p_ctx, payload, extra->auxiliary_length, "Auxiliary length");
      auxiliary_data_size = BITS_TO_BYTES(auxiliary_data_size);
      BITS_SKIP_BYTES(p_ctx, payload, auxiliary_data_size, "Auxiliary data");
   }

   return BITS_VALID(p_ctx, payload) ? VC_CONTAINER_SUCCESS : VC_CONTAINER_ERROR_FORMAT_INVALID;
}
