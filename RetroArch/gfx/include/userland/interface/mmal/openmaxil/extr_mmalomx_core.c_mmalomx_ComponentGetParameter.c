
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_20__ {int size; int id; } ;
struct TYPE_29__ {int encodings_num; int * encodings; TYPE_14__* mmal; TYPE_15__ encodings_header; } ;
struct TYPE_28__ {int eEncoding; } ;
struct TYPE_27__ {int eBufferSupplier; int nPortIndex; } ;
struct TYPE_26__ {scalar_t__ cRole; } ;
struct TYPE_25__ {int nPortIndex; } ;
struct TYPE_24__ {int nPorts; int nStartPortNumber; } ;
struct TYPE_23__ {int nGroupID; int nGroupPriority; } ;
struct TYPE_22__ {int nIndex; int xFramerate; int eColorFormat; int eCompressionFormat; int nPortIndex; } ;
struct TYPE_21__ {int encoding; } ;
struct TYPE_19__ {TYPE_1__* format; } ;
struct TYPE_18__ {scalar_t__ state; char* name; int role; int group_id; int group_priority; int * ports_domain_num; } ;
typedef TYPE_2__ OMX_VIDEO_PARAM_PORTFORMATTYPE ;
typedef int OMX_VERSIONTYPE ;
typedef int OMX_U32 ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_3__ OMX_PRIORITYMGMTTYPE ;
typedef TYPE_4__ OMX_PORT_PARAM_TYPE ;
typedef TYPE_5__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef TYPE_6__ OMX_PARAM_COMPONENTROLETYPE ;
typedef TYPE_7__ OMX_PARAM_BUFFERSUPPLIERTYPE ;
typedef int OMX_INDEXTYPE ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_8__ OMX_AUDIO_PARAM_PORTFORMATTYPE ;
typedef TYPE_9__ MMALOMX_PORT_T ;
typedef TYPE_10__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,int,int ,scalar_t__) ;
 int MMAL_PARAMETER_SUPPORTED_ENCODINGS ;
 int MMAL_SUCCESS ;
 int OMX_BufferSupplyUnspecified ;
 int OMX_COLOR_FormatUnused ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNoMore ;
 int OMX_ErrorNone ;
 int OMX_ErrorNotImplemented ;
 size_t OMX_PortDomainAudio ;
 size_t OMX_PortDomainImage ;
 size_t OMX_PortDomainOther ;
 size_t OMX_PortDomainVideo ;
 scalar_t__ OMX_StateInvalid ;
 int OMX_VIDEO_CodingUnused ;
 int PARAM_GET_PORT (TYPE_9__*,TYPE_10__*,int ) ;
 int mmal_port_parameter_get (TYPE_14__*,TYPE_15__*) ;
 int mmalil_encoding_to_omx_audio_coding (int ) ;
 int mmalil_encoding_to_omx_color_format (int ) ;
 int mmalil_encoding_to_omx_video_coding (int ) ;
 int mmalil_error_to_omx (int ) ;
 int mmalomx_get_port_settings (TYPE_9__*,TYPE_5__*) ;
 int mmalomx_param_to_string (int) ;
 int mmalomx_parameter_get (TYPE_10__*,int,scalar_t__) ;
 char* mmalomx_role_to_name (int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentGetParameter(
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
   case 139:
   case 129:
   case 136:
   case 134:
      {
         OMX_PORT_PARAM_TYPE *param = (OMX_PORT_PARAM_TYPE *)pParam;
         param->nStartPortNumber = 0;
         param->nPorts = component->ports_domain_num[OMX_PortDomainAudio];
         if (nParamIndex == 139)
            return OMX_ErrorNone;
         param->nStartPortNumber += param->nPorts;
         param->nPorts = component->ports_domain_num[OMX_PortDomainVideo];
         if (nParamIndex == 129)
            return OMX_ErrorNone;
         param->nStartPortNumber += param->nPorts;
         param->nPorts = component->ports_domain_num[OMX_PortDomainImage];
         if (nParamIndex == 136)
            return OMX_ErrorNone;
         param->nStartPortNumber += param->nPorts;
         param->nPorts = component->ports_domain_num[OMX_PortDomainOther];
      }
      return OMX_ErrorNone;
      break;
   case 132:
      {
         OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         return mmalil_error_to_omx(mmalomx_get_port_settings(port, param));
      }
      return OMX_ErrorNone;
      break;
   case 137:
      {
         OMX_PARAM_BUFFERSUPPLIERTYPE *param = (OMX_PARAM_BUFFERSUPPLIERTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         param->eBufferSupplier = OMX_BufferSupplyUnspecified;
      }
      return OMX_ErrorNone;
      break;
   case 131:
      {
         OMX_PRIORITYMGMTTYPE *param = (OMX_PRIORITYMGMTTYPE *)pParam;
         param->nGroupPriority = component->group_priority;
         param->nGroupID = component->group_id;
      }
      return OMX_ErrorNone;
      break;
   case 128:
   case 138:
      {
         OMX_VIDEO_PARAM_PORTFORMATTYPE *param = (OMX_VIDEO_PARAM_PORTFORMATTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);


         if (!port->encodings_num)
         {
            port->encodings_header.id = MMAL_PARAMETER_SUPPORTED_ENCODINGS;
            port->encodings_header.size = sizeof(port->encodings_header) + sizeof(port->encodings);
            if (mmal_port_parameter_get(port->mmal, &port->encodings_header) == MMAL_SUCCESS)
            {
                port->encodings_num = (port->encodings_header.size - sizeof(port->encodings_header)) /
                   sizeof(port->encodings[0]);
            }
            if (!port->encodings_num)
            {
               port->encodings_num = 1;
               port->encodings[0] = port->mmal->format->encoding;
            }
         }

         if (param->nIndex >= port->encodings_num)
            return OMX_ErrorNoMore;

         if (nParamIndex == 128)
         {
            param->eColorFormat = OMX_COLOR_FormatUnused;
            param->eCompressionFormat =
               mmalil_encoding_to_omx_video_coding(port->encodings[param->nIndex]);
            if (param->eCompressionFormat == OMX_VIDEO_CodingUnused)
               param->eColorFormat =
                  mmalil_encoding_to_omx_color_format(port->encodings[param->nIndex]);
            param->xFramerate = 0;
         }
         else
         {
            OMX_AUDIO_PARAM_PORTFORMATTYPE *aparam =
               (OMX_AUDIO_PARAM_PORTFORMATTYPE *)pParam;
            aparam->eEncoding =
               mmalil_encoding_to_omx_audio_coding(port->encodings[param->nIndex]);
         }
         return OMX_ErrorNone;
      }
      break;
   case 135:
   case 133:
      break;
   case 130:
      {
         OMX_PARAM_COMPONENTROLETYPE *param = (OMX_PARAM_COMPONENTROLETYPE *)pParam;
         const char *role = mmalomx_role_to_name(component->role);
         if (!role)
            role = component->name;
         snprintf((char *)param->cRole, sizeof(param->cRole), "%s", role);
      }
      return OMX_ErrorNone;
   default:
      return mmalomx_parameter_get(component, nParamIndex, pParam);
   }

   return OMX_ErrorNotImplemented;
}
