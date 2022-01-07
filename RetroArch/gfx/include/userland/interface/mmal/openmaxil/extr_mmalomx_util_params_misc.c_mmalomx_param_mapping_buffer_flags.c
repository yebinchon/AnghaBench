
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int nU32; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_PARAM_U32TYPE ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_UINT32_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;
 int mmalil_buffer_flags_to_mmal (int ) ;
 int mmalil_buffer_flags_to_omx (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_buffer_flags(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_PARAM_U32TYPE *omx = (OMX_PARAM_U32TYPE *)omx_param;
   MMAL_PARAMETER_UINT32_T *mmal = (MMAL_PARAMETER_UINT32_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
      mmal->value = mmalil_buffer_flags_to_mmal(omx->nU32);
   else
      omx->nU32 = mmalil_buffer_flags_to_omx(mmal->value);

   return MMAL_SUCCESS;
}
