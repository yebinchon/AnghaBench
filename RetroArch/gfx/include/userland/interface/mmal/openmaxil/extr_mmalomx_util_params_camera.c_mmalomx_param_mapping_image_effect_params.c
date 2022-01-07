
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int omx; int mmal; } ;
struct TYPE_6__ {int num_effect_params; int effect_parameter; int effect; } ;
struct TYPE_5__ {int nNumParams; int nParams; int eImageFilter; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_CONFIG_IMAGEFILTERPARAMSTYPE ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_IMAGEFX_PARAMETERS_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 int MMALOMX_PARAM_ENUM_FIND (int ,TYPE_3__*,int ,scalar_t__,int ,int ) ;
 int MMALOMX_PARAM_ENUM_TRANSLATE_T ;
 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_COUNTOF (int ) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int memcpy (int ,int ,int) ;
 int mmalomx_param_enum_image_effect ;
 TYPE_3__* xenum ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_image_effect_params(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_CONFIG_IMAGEFILTERPARAMSTYPE *omx = (OMX_CONFIG_IMAGEFILTERPARAMSTYPE *)omx_param;
   MMAL_PARAMETER_IMAGEFX_PARAMETERS_T *mmal = (MMAL_PARAMETER_IMAGEFX_PARAMETERS_T *)mmal_param;
   MMALOMX_PARAM_ENUM_FIND(MMALOMX_PARAM_ENUM_TRANSLATE_T, xenum, mmalomx_param_enum_image_effect,
      dir, mmal->effect, omx->eImageFilter);

   if (!xenum)
      return MMAL_EINVAL;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      if (omx->nNumParams > MMAL_COUNTOF(mmal->effect_parameter))
         return MMAL_EINVAL;
      mmal->effect = xenum->mmal;
      mmal->num_effect_params = omx->nNumParams;
      memcpy(mmal->effect_parameter, omx->nParams, sizeof(uint32_t) * omx->nNumParams);
   }
   else
   {
      if (mmal->num_effect_params > MMAL_COUNTOF(omx->nParams))
         return MMAL_EINVAL;
      omx->eImageFilter = xenum->omx;
      omx->nNumParams = mmal->num_effect_params;
      memcpy(omx->nParams, mmal->effect_parameter, sizeof(uint32_t) * omx->nNumParams);
   }

   return MMAL_SUCCESS;
}
