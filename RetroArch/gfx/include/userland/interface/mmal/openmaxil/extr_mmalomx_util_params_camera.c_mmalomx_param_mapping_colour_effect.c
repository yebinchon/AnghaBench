
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int v; int u; int enable; } ;
struct TYPE_3__ {int nCustomizedV; int nCustomizedU; int bColorEnhancement; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_CONFIG_COLORENHANCEMENTTYPE ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef TYPE_2__ MMAL_PARAMETER_COLOURFX_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_colour_effect(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_CONFIG_COLORENHANCEMENTTYPE *omx = (OMX_CONFIG_COLORENHANCEMENTTYPE *)omx_param;
   MMAL_PARAMETER_COLOURFX_T *mmal = (MMAL_PARAMETER_COLOURFX_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->enable = omx->bColorEnhancement;
      mmal->u = omx->nCustomizedU;
      mmal->v = omx->nCustomizedV;
   }
   else
   {
      omx->bColorEnhancement = mmal->enable;
      omx->nCustomizedU = mmal->u;
      omx->nCustomizedV = mmal->v;
   }

   return MMAL_SUCCESS;
}
