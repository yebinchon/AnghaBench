
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int nS32; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_PARAM_S32TYPE ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_INT32_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_ev_comp(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_PARAM_S32TYPE *omx = (OMX_PARAM_S32TYPE *)omx_param;
   MMAL_PARAMETER_INT32_T *mmal = (MMAL_PARAMETER_INT32_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
      mmal->value = (omx->nS32 * 6) >> 16;
   else
      omx->nS32 = (mmal->value << 16) / 6;

   return MMAL_SUCCESS;
}
