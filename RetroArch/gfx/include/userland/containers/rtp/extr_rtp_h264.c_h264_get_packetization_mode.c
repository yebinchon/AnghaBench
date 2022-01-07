
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINERS_LIST_T ;


 int LOG_ERROR (int *,char*,int) ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ rtp_get_parameter_u32 (int const*,char*,int*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T h264_get_packetization_mode(VC_CONTAINER_T *p_ctx,
      const VC_CONTAINERS_LIST_T *params)
{
   uint32_t packetization_mode;

   if (rtp_get_parameter_u32(params, "packetization-mode", &packetization_mode))
   {

      if (packetization_mode > 1)
      {
         LOG_ERROR(p_ctx, "H.264: Unsupported packetization mode: %u", packetization_mode);
         return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
      }
   }

   return VC_CONTAINER_SUCCESS;
}
