
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINERS_LIST_T ;


 int LOG_ERROR (int *,char*) ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ rtp_get_parameter_u32 (int const*,char*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T h264_check_unsupported_features(VC_CONTAINER_T *p_ctx,
      const VC_CONTAINERS_LIST_T *params)
{
   uint32_t u32_unused;


   if (rtp_get_parameter_u32(params, "sprop-interleaving-depth", &u32_unused) ||
         rtp_get_parameter_u32(params, "sprop-deint-buf-req", &u32_unused) ||
         rtp_get_parameter_u32(params, "sprop-init-buf-time", &u32_unused) ||
         rtp_get_parameter_u32(params, "sprop-max-don-diff", &u32_unused))
   {
      LOG_ERROR(p_ctx, "H.264: Interleaved packetization is not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   return VC_CONTAINER_SUCCESS;
}
