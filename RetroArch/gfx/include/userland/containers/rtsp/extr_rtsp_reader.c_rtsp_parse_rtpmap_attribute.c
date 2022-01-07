
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_7__ {char* media_type; int reader_uri; int payload_type; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {TYPE_3__* module; } ;


 int CHANNELS_NAME ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*) ;
 int MIME_TYPE_NAME ;
 int SAMPLE_RATE_NAME ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 char* rtsp_parse_extract (char**,int ,int *) ;
 char* rtsp_parse_extract_ws (char**) ;
 int slash_delimiter_fn ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strlen (char*) ;
 int vc_uri_add_query (int ,int ,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_parse_rtpmap_attribute( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      char *attribute )
{
   VC_CONTAINER_TRACK_MODULE_T *t_module = track->priv->module;
   char *ptr = attribute;
   char *payload_type;
   char *mime_sub_type;
   char *sample_rate;
   char *full_mime_type;
   char *channels;




   payload_type = rtsp_parse_extract_ws(&ptr);
   if (strcmp(payload_type, t_module->payload_type))
   {

      LOG_DEBUG(p_ctx, "RTSP: Secondary payload type attribute - not supported");
      return VC_CONTAINER_SUCCESS;
   }

   mime_sub_type = rtsp_parse_extract(&ptr, slash_delimiter_fn, ((void*)0));
   if (!*mime_sub_type)
   {
      LOG_ERROR(p_ctx, "RTSP: rtpmap: MIME type missing");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   sample_rate = rtsp_parse_extract(&ptr, slash_delimiter_fn, ((void*)0));
   if (!*sample_rate)
   {
      LOG_ERROR(p_ctx, "RTSP: rtpmap: sample rate missing");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   full_mime_type = (char *)malloc(strlen(t_module->media_type) + strlen(mime_sub_type) + 2);
   if (!full_mime_type)
   {
      LOG_ERROR(p_ctx, "RTSP: Failed to allocate space for full MIME type");
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   }

   sprintf(full_mime_type, "%s/%s", t_module->media_type, mime_sub_type);
   if (!vc_uri_add_query(t_module->reader_uri, MIME_TYPE_NAME, full_mime_type))
   {
      free(full_mime_type);
      LOG_ERROR(p_ctx, "RTSP: Failed to add MIME type to URI");
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   }
   free(full_mime_type);

   if (!vc_uri_add_query(t_module->reader_uri, SAMPLE_RATE_NAME, sample_rate))
   {
      LOG_ERROR(p_ctx, "RTSP: Failed to add sample rate to URI");
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   }


   channels = rtsp_parse_extract_ws(&ptr);
   if (*channels)
   {
      if (!vc_uri_add_query(t_module->reader_uri, CHANNELS_NAME, channels))
      {
         LOG_ERROR(p_ctx, "RTSP: Failed to add channels to URI");
         return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      }
   }

   return VC_CONTAINER_SUCCESS;
}
