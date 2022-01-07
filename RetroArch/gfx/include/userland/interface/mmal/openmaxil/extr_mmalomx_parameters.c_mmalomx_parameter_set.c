
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_18__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_35__ {int eColorSpace; int nPortIndex; } ;
struct TYPE_34__ {int nSize; int nPFrames; int eLevel; int eProfile; int nPortIndex; } ;
struct TYPE_33__ {int nSize; int nPFrames; int eLevel; int eProfile; int nPortIndex; } ;
struct TYPE_32__ {int nSize; int nPFrames; int eLevel; int eProfile; int nPortIndex; } ;
struct TYPE_25__ {int den; int num; } ;
struct TYPE_30__ {int color_space; TYPE_17__ par; } ;
struct TYPE_31__ {TYPE_4__ video; } ;
struct TYPE_29__ {int nSize; int nU32; int nPortIndex; } ;
struct TYPE_27__ {int nU32; } ;
struct TYPE_28__ {TYPE_1__ common; } ;
struct TYPE_26__ {TYPE_15__* format; } ;
struct TYPE_24__ {TYPE_5__* es; } ;
struct TYPE_23__ {int no_cropping; TYPE_18__* mmal; TYPE_2__ format_param; } ;
struct TYPE_22__ {int nY; int nX; int nPortIndex; } ;
struct TYPE_21__ {int bEnabled; int nPortIndex; } ;
struct TYPE_20__ {TYPE_3__ common; } ;
typedef TYPE_6__ OMX_VIDEO_PARAM_MPEG4TYPE ;
typedef TYPE_7__ OMX_VIDEO_PARAM_H263TYPE ;
typedef TYPE_8__ OMX_VIDEO_PARAM_AVCTYPE ;
typedef int OMX_U32 ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_9__ OMX_PARAM_COLORSPACETYPE ;
typedef int OMX_INDEXTYPE ;
typedef TYPE_10__ OMX_FORMAT_PARAM_TYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_11__ OMX_CONFIG_PORTBOOLEANTYPE ;
typedef TYPE_12__ OMX_CONFIG_POINTTYPE ;
typedef TYPE_13__ MMALOMX_PORT_T ;
typedef int MMALOMX_COMPONENT_T ;


 int OMX_ErrorBadParameter ;
 int OMX_ErrorNone ;
 int OMX_ErrorNotImplemented ;
 int OMX_PARAM_U32TYPE ;
 int PARAM_GET_PORT (TYPE_13__*,int *,int ) ;
 int memcpy (int *,int *,int) ;
 int mmal_port_format_commit (TYPE_18__*) ;
 int mmal_rational_simplify (TYPE_17__*) ;
 int mmalil_error_to_omx (int ) ;
 int mmalil_omx_audio_param_index_to_coding (int) ;
 int mmalil_omx_audio_param_to_format (TYPE_15__*,int ,TYPE_10__*) ;
 int mmalil_omx_color_space_to_mmal (int ) ;
 int mmalomx_parameter_set_xlat (int *,int,scalar_t__) ;
 int mmalomx_set_video_param (TYPE_13__*,int ,int ,int ) ;
 int nU32 ;
 int offsetof (int ,int ) ;

OMX_ERRORTYPE mmalomx_parameter_set(MMALOMX_COMPONENT_T *component,
   OMX_INDEXTYPE nParamIndex, OMX_PTR pParam)
{
   MMALOMX_PORT_T *port = ((void*)0);

   switch(nParamIndex)
   {

   case 133:
      {
         OMX_VIDEO_PARAM_AVCTYPE *param = (OMX_VIDEO_PARAM_AVCTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         if (param->nSize < sizeof(*param))
            return OMX_ErrorBadParameter;
         return mmalomx_set_video_param(port, param->eProfile, param->eLevel,
            param->nPFrames + 1);
      }
   case 130:
      {
         OMX_VIDEO_PARAM_MPEG4TYPE *param = (OMX_VIDEO_PARAM_MPEG4TYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         if (param->nSize < sizeof(*param))
            return OMX_ErrorBadParameter;
         return mmalomx_set_video_param(port, param->eProfile, param->eLevel,
            param->nPFrames + 1);
      }
   case 132:
      {
         OMX_VIDEO_PARAM_H263TYPE *param = (OMX_VIDEO_PARAM_H263TYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         if (param->nSize < sizeof(*param))
            return OMX_ErrorBadParameter;
         return mmalomx_set_video_param(port, param->eProfile, param->eLevel,
            param->nPFrames + 1);
      }
   case 131:
   case 128:
   case 129:
      {
         OMX_FORMAT_PARAM_TYPE *param = (OMX_FORMAT_PARAM_TYPE *)pParam;
         OMX_U32 offset = offsetof(OMX_PARAM_U32TYPE, nU32);
         PARAM_GET_PORT(port, component, param->common.nPortIndex);
         if (param->common.nSize > sizeof(port->format_param) ||
             param->common.nSize < offset)
            return OMX_ErrorBadParameter;
         memcpy(&port->format_param.common.nU32, &param->common.nU32,
                param->common.nSize - offset);
         return OMX_ErrorNone;
      }
   case 137:
   case 140:
   case 138:
   case 139:
      {
         OMX_FORMAT_PARAM_TYPE *param = (OMX_FORMAT_PARAM_TYPE *)pParam;
         OMX_U32 offset = offsetof(OMX_PARAM_U32TYPE, nU32);
         PARAM_GET_PORT(port, component, param->common.nPortIndex);
         if (param->common.nSize > sizeof(port->format_param) ||
             param->common.nSize < offset)
            return OMX_ErrorBadParameter;
         memcpy(&port->format_param.common.nU32, &param->common.nU32,
                param->common.nSize - offset);
         mmalil_omx_audio_param_to_format(port->mmal->format,
            mmalil_omx_audio_param_index_to_coding(nParamIndex), param);
         mmal_port_format_commit(port->mmal);
         return OMX_ErrorNone;
      }
   case 136:
      {
         OMX_CONFIG_POINTTYPE *param = (OMX_CONFIG_POINTTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         port->mmal->format->es->video.par.num = param->nX;
         port->mmal->format->es->video.par.den = param->nY;
         mmal_rational_simplify(&port->mmal->format->es->video.par);
         return mmalil_error_to_omx(mmal_port_format_commit(port->mmal));
      }
   case 134:
      {
         OMX_PARAM_COLORSPACETYPE *param = (OMX_PARAM_COLORSPACETYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         port->mmal->format->es->video.color_space = mmalil_omx_color_space_to_mmal(param->eColorSpace);
         return mmalil_error_to_omx(mmal_port_format_commit(port->mmal));
      }
   case 135:
      {
         OMX_CONFIG_PORTBOOLEANTYPE *param = (OMX_CONFIG_PORTBOOLEANTYPE *)pParam;
         PARAM_GET_PORT(port, component, param->nPortIndex);
         port->no_cropping = param->bEnabled;
         return OMX_ErrorNone;
      }
   default:
      return mmalomx_parameter_set_xlat(component, nParamIndex, pParam);
   }

   return OMX_ErrorNotImplemented;
}
