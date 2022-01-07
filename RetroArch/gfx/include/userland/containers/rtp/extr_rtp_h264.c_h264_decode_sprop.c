
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_READ_U32 (int *,int *,int,char*) ;


 int NAL_UNIT_TYPE_MASK ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_SUCCESS ;
 int h264_decode_sequence_parameter_set (int *,int *,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T h264_decode_sprop(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      VC_CONTAINER_BITS_T *sprop)
{
   switch (BITS_READ_U32(p_ctx, sprop, 8, "nal_unit_header") & NAL_UNIT_TYPE_MASK)
   {
   case 128:
      return h264_decode_sequence_parameter_set(p_ctx, track, sprop);
   case 129:

      return VC_CONTAINER_SUCCESS;
   default:
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }
}
