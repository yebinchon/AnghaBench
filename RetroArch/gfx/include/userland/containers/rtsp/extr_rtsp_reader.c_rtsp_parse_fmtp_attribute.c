
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_7__ {int reader_uri; int payload_type; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {TYPE_3__* module; } ;


 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,char*,...) ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ rtsp_parse_extract_parameter (char**,char**,char**) ;
 char* rtsp_parse_extract_ws (char**) ;
 scalar_t__ strcmp (char*,int ) ;
 int vc_uri_add_query (int ,char*,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_parse_fmtp_attribute( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      char *attribute )
{
   VC_CONTAINER_TRACK_MODULE_T *t_module = track->priv->module;
   char *ptr = attribute;
   char *payload_type;






   payload_type = rtsp_parse_extract_ws(&ptr);
   if (strcmp(payload_type, t_module->payload_type))
   {

      LOG_DEBUG(p_ctx, "RTSP: Secondary payload type attribute - not supported");
      return VC_CONTAINER_SUCCESS;
   }

   while (*ptr)
   {
      char *name;
      char *value;



      if (rtsp_parse_extract_parameter(&ptr, &name, &value))
      {
         if (!vc_uri_add_query(t_module->reader_uri, name, value))
         {
            if (value)
               LOG_ERROR(p_ctx, "RTSP: Failed to add <%s>=<%s> query to URI", name, value);
            else
               LOG_ERROR(p_ctx, "RTSP: Failed to add <%s> query to URI", name);
            return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
         }
      }
   }

   return VC_CONTAINER_SUCCESS;
}
