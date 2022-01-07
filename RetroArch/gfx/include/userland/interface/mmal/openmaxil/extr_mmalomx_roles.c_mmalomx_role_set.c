
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_23__ {int eFormat; } ;
struct TYPE_22__ {int eLevel; int eProfile; } ;
struct TYPE_21__ {int eLevel; int eProfile; } ;
struct TYPE_20__ {int bForceRoundingTypeToZero; int bPLUSPTYPEAllowed; int eLevel; int eProfile; } ;
struct TYPE_24__ {TYPE_7__ wmv; TYPE_6__ avc; TYPE_5__ mpeg4; TYPE_4__ h263; } ;
struct TYPE_25__ {TYPE_13__* mmal; TYPE_8__ format_param; } ;
struct TYPE_17__ {int num; int den; } ;
struct TYPE_18__ {int width; int height; TYPE_1__ frame_rate; } ;
struct TYPE_19__ {TYPE_2__ video; } ;
struct TYPE_16__ {int name; TYPE_10__* format; } ;
struct TYPE_15__ {int role; TYPE_9__* ports; int registry_id; } ;
struct TYPE_14__ {int type; int bitrate; TYPE_3__* es; scalar_t__ encoding; } ;
typedef int OMX_ERRORTYPE ;
typedef scalar_t__ MMAL_FOURCC_T ;
typedef int MMAL_ES_TYPE_T ;
typedef TYPE_10__ MMAL_ES_FORMAT_T ;
typedef int MMALOMX_ROLE_T ;
typedef TYPE_11__ MMALOMX_COMPONENT_T ;


 int LOG_ERROR (char*,int ,char const*) ;







 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 int MMAL_ES_TYPE_UNKNOWN ;

 scalar_t__ MMAL_SUCCESS ;
 int OMX_ErrorNone ;
 int OMX_ErrorUnsupportedSetting ;
 int OMX_FALSE ;
 int OMX_TRUE ;
 int OMX_VIDEO_AVCLevel1 ;
 int OMX_VIDEO_AVCProfileBaseline ;
 int OMX_VIDEO_H263Level10 ;
 int OMX_VIDEO_H263ProfileBaseline ;
 int OMX_VIDEO_MPEG4Level1 ;
 int OMX_VIDEO_MPEG4ProfileSimple ;
 int OMX_VIDEO_WMVFormat9 ;
 scalar_t__ mmal_port_format_commit (TYPE_13__*) ;
 int mmalomx_format_encoding_from_role (int const,scalar_t__*,int*,unsigned int*) ;
 int mmalomx_registry_component_supports_role (int ,int const) ;
 int mmalomx_role_from_name (char const*) ;

OMX_ERRORTYPE mmalomx_role_set(MMALOMX_COMPONENT_T *component, const char *name)
{
   const MMALOMX_ROLE_T role = mmalomx_role_from_name(name);
   MMAL_FOURCC_T encoding = MMAL_ENCODING_UNKNOWN;
   MMAL_ES_TYPE_T es_type = MMAL_ES_TYPE_UNKNOWN;
   unsigned int port;
   MMAL_ES_FORMAT_T *format;

   if (!role || !mmalomx_registry_component_supports_role(component->registry_id, role))
      return OMX_ErrorUnsupportedSetting;

   component->role = role;

   mmalomx_format_encoding_from_role(role, &encoding, &es_type, &port);
   if (encoding == MMAL_ENCODING_UNKNOWN)
      return OMX_ErrorNone;

   format = component->ports[port].mmal->format;
   format->type = es_type;
   format->encoding = encoding;
   format->bitrate = 64000;
   switch (es_type)
   {
   case 128:
      format->es->video.width = 176;
      format->es->video.height = 144;
      format->es->video.frame_rate.num = 15;
      format->es->video.frame_rate.den = 1;
      break;
   default:
      break;
   }

   switch (role)
   {
   case 134:
   case 130:
      component->ports[port].format_param.h263.eProfile = OMX_VIDEO_H263ProfileBaseline;
      component->ports[port].format_param.h263.eLevel = OMX_VIDEO_H263Level10;
      component->ports[port].format_param.h263.bPLUSPTYPEAllowed = OMX_FALSE;
      component->ports[port].format_param.h263.bForceRoundingTypeToZero = OMX_TRUE;
      break;
   case 133:
   case 129:
      component->ports[port].format_param.mpeg4.eProfile = OMX_VIDEO_MPEG4ProfileSimple;
      component->ports[port].format_param.mpeg4.eLevel = OMX_VIDEO_MPEG4Level1;
      break;
   case 135:
   case 131:
      component->ports[port].format_param.avc.eProfile = OMX_VIDEO_AVCProfileBaseline;
      component->ports[port].format_param.avc.eLevel = OMX_VIDEO_AVCLevel1;
      break;
   case 132:
      component->ports[port].format_param.wmv.eFormat = OMX_VIDEO_WMVFormat9;
      break;
   default:
      break;
   }

   if (mmal_port_format_commit(component->ports[port].mmal) != MMAL_SUCCESS)
      LOG_ERROR("failed to commit format to %s for role %s",
                component->ports[port].mmal->name, name);

   return OMX_ErrorNone;
}
