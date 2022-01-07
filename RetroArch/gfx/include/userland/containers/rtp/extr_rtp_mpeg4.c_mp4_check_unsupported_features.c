
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINERS_LIST_T ;


 int LOG_ERROR (int *,char*) ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ rtp_get_parameter_u32 (int const*,char*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_check_unsupported_features(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   uint32_t u32_unused;

   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   VC_CONTAINER_PARAM_UNUSED(track);


   if (rtp_get_parameter_u32(params, "randomAccessIndication", &u32_unused))
   {
      LOG_ERROR(p_ctx, "MPEG-4: random access not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }


   if (rtp_get_parameter_u32(params, "maxDisplacement", &u32_unused) ||
         rtp_get_parameter_u32(params, "de-interleaveBufferSize", &u32_unused))
   {
      LOG_ERROR(p_ctx, "MPEG-4: interleaved packetization not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }


   if (rtp_get_parameter_u32(params, "streamStateIndication", &u32_unused))
   {
      LOG_ERROR(p_ctx, "MPEG-4: system streams not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   return VC_CONTAINER_SUCCESS;
}
