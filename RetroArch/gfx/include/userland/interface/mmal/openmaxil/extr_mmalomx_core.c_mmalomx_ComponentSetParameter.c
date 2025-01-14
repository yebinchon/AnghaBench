
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_28__ {int zero_copy; TYPE_15__* mmal; } ;
struct TYPE_27__ {int eEncoding; int nPortIndex; } ;
struct TYPE_26__ {int bEnabled; int nPortIndex; } ;
struct TYPE_25__ {int nPortIndex; } ;
struct TYPE_24__ {scalar_t__ cRole; } ;
struct TYPE_23__ {int nPortIndex; } ;
struct TYPE_22__ {int nGroupID; int nGroupPriority; } ;
struct TYPE_21__ {int eColorFormat; int eCompressionFormat; int nPortIndex; } ;
struct TYPE_20__ {int encoding_variant; int encoding; } ;
struct TYPE_19__ {TYPE_1__* format; } ;
struct TYPE_18__ {scalar_t__ state; int group_id; int group_priority; } ;
typedef TYPE_2__ OMX_VIDEO_PARAM_PORTFORMATTYPE ;
typedef int OMX_VERSIONTYPE ;
typedef int OMX_U32 ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_3__ OMX_PRIORITYMGMTTYPE ;
typedef TYPE_4__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef TYPE_5__ OMX_PARAM_COMPONENTROLETYPE ;
typedef TYPE_6__ OMX_PARAM_BUFFERSUPPLIERTYPE ;
typedef int OMX_INDEXTYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_7__ OMX_CONFIG_PORTBOOLEANTYPE ;
typedef TYPE_8__ OMX_AUDIO_PARAM_PORTFORMATTYPE ;
typedef TYPE_9__ MMALOMX_PORT_T ;
typedef TYPE_10__ MMALOMX_COMPONENT_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,scalar_t__,int,int ,scalar_t__) ;
 int MMAL_SUCCESS ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorIncorrectStateOperation ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNone ;
 int OMX_ErrorNotImplemented ;

 int OMX_IndexParamBrcmZeroCopy ;







 scalar_t__ OMX_StateInvalid ;
 scalar_t__ OMX_StateLoaded ;
 int OMX_VIDEO_CodingUnused ;
 int PARAM_GET_PORT (TYPE_9__*,TYPE_10__*,int ) ;
 int mmal_port_format_commit (TYPE_15__*) ;
 int mmalil_error_to_omx (int ) ;
 int mmalil_omx_audio_coding_to_encoding (int ) ;
 int mmalil_omx_color_format_to_encoding (int ) ;
 int mmalil_omx_video_coding_to_encoding (int ) ;
 int mmalomx_param_to_string (int) ;
 int mmalomx_parameter_set (TYPE_10__*,int,scalar_t__) ;
 int mmalomx_role_set (TYPE_10__*,char const*) ;
 int mmalomx_set_port_settings (TYPE_9__*,TYPE_4__*) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentSetParameter(
   OMX_HANDLETYPE hComponent,
   OMX_INDEXTYPE nParamIndex,
   OMX_PTR pParam)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   MMALOMX_PORT_T *port = ((void*)0);

   LOG_TRACE("hComponent %p, nParamIndex 0x%x (%s), pParam %p",
             hComponent, nParamIndex, mmalomx_param_to_string(nParamIndex), pParam);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!pParam)
      return OMX_ErrorBadParameter;
   if (*(OMX_U32 *)pParam < sizeof(OMX_U32) + sizeof(OMX_VERSIONTYPE))
      return OMX_ErrorBadParameter;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;

   switch(nParamIndex)
   {
   case 131:
      {
         OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         return mmalil_error_to_omx(mmalomx_set_port_settings(port, param));
      }
      return OMX_ErrorNone;
      break;
   case 134:
      {
         OMX_PARAM_BUFFERSUPPLIERTYPE *param = (OMX_PARAM_BUFFERSUPPLIERTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);

      }
      return OMX_ErrorNone;
      break;
   case 130:
      {
         OMX_PRIORITYMGMTTYPE *param = (OMX_PRIORITYMGMTTYPE *)pParam;

         if (component->state != OMX_StateLoaded)
         return OMX_ErrorIncorrectStateOperation;

         component->group_priority = param->nGroupPriority;
         component->group_id = param->nGroupID;
      }
      return OMX_ErrorNone;
      break;
   case 135:
      {
         OMX_AUDIO_PARAM_PORTFORMATTYPE *param = (OMX_AUDIO_PARAM_PORTFORMATTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         port->mmal->format->encoding = mmalil_omx_audio_coding_to_encoding(param->eEncoding);
         port->mmal->format->encoding_variant = 0;
         if (mmal_port_format_commit(port->mmal) != MMAL_SUCCESS)
            LOG_ERROR("OMX_IndexParamAudioPortFormat commit failed");
         return OMX_ErrorNone;
      }
      break;
   case 128:
      {
         OMX_VIDEO_PARAM_PORTFORMATTYPE *param = (OMX_VIDEO_PARAM_PORTFORMATTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         if (param->eCompressionFormat != OMX_VIDEO_CodingUnused)
            port->mmal->format->encoding = mmalil_omx_video_coding_to_encoding(param->eCompressionFormat);
         else
            port->mmal->format->encoding = mmalil_omx_color_format_to_encoding(param->eColorFormat);
         port->mmal->format->encoding_variant = 0;

         if (mmal_port_format_commit(port->mmal) != MMAL_SUCCESS)
            LOG_ERROR("OMX_IndexParamAudioPortFormat commit failed");
         return OMX_ErrorNone;
      }
      break;
   case 133:
   case 132:
      break;
   case 129:
      {
         OMX_PARAM_COMPONENTROLETYPE *param = (OMX_PARAM_COMPONENTROLETYPE *)pParam;
         return mmalomx_role_set(component, (const char *)param->cRole);
      }
      break;
   default:
      {
         OMX_ERRORTYPE status = mmalomx_parameter_set(component, nParamIndex, pParam);


         if (status == OMX_ErrorNone && nParamIndex == OMX_IndexParamBrcmZeroCopy)
         {
            PARAM_GET_PORT(port, component, ((OMX_CONFIG_PORTBOOLEANTYPE *)pParam)->nPortIndex);
            port->zero_copy = ((OMX_CONFIG_PORTBOOLEANTYPE *)pParam)->bEnabled;
         }

         return status;
      }
   }

   return OMX_ErrorNotImplemented;
}
