
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int omx_id; int mmal_id; } ;
struct TYPE_7__ {int enable; int change_id; } ;
struct TYPE_6__ {int bEnable; int nIndex; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_CONFIG_REQUESTCALLBACKTYPE ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef TYPE_2__ MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T ;
typedef TYPE_3__ MMALOMX_PARAM_TRANSLATION_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int VCOS_ALERT (char*,int ) ;
 TYPE_3__* mmalomx_find_parameter_from_mmal_id (int ) ;
 TYPE_3__* mmalomx_find_parameter_from_omx_id (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_event_request(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_CONFIG_REQUESTCALLBACKTYPE *omx = (OMX_CONFIG_REQUESTCALLBACKTYPE *)omx_param;
   MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T *mmal = (MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T *)mmal_param;
   const MMALOMX_PARAM_TRANSLATION_T *change_xlat;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      change_xlat = mmalomx_find_parameter_from_omx_id(omx->nIndex);
      if (!change_xlat)
      {
         VCOS_ALERT("ommalomx_param_mapping_event_request: omx parameter "
                    "0x%08x not recognised", omx->nIndex);
         return MMAL_EINVAL;
      }

      mmal->change_id = change_xlat->mmal_id;
      mmal->enable = omx->bEnable;
   }
   else
   {
      change_xlat = mmalomx_find_parameter_from_mmal_id(mmal->change_id);
      if (!change_xlat)
      {
         VCOS_ALERT("mmalomx_param_mapping_event_request: mmal parameter "
                    "0x%08x not recognised", mmal->change_id);
         return MMAL_EINVAL;
      }

      omx->nIndex = change_xlat->omx_id;
      omx->bEnable = mmal->enable;
   }

   return MMAL_SUCCESS;
}
