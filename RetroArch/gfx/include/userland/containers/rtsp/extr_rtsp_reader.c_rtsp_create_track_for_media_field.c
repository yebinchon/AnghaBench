
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_15__ {char* payload_type; char* media_type; scalar_t__ reader_uri; int rtp_port; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_16__ {scalar_t__ tracks_num; TYPE_2__** tracks; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {TYPE_3__* module; } ;


 int LOG_DEBUG (TYPE_4__*,char*,scalar_t__) ;
 int LOG_ERROR (TYPE_4__*,char*) ;
 int PAYLOAD_TYPE_NAME ;
 int RTP_SCHEME ;
 scalar_t__ RTSP_TRACKS_MAX ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 char* rtsp_parse_extract_ws (char**) ;
 int sscanf (char*,char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_2__* vc_container_allocate_track (TYPE_4__*,int) ;
 int vc_container_free_track (TYPE_4__*,TYPE_2__*) ;
 int vc_uri_add_query (scalar_t__,int ,char*) ;
 scalar_t__ vc_uri_create () ;
 int vc_uri_release (scalar_t__) ;
 int vc_uri_set_scheme (scalar_t__,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_create_track_for_media_field(VC_CONTAINER_T *p_ctx,
      char *media,
      VC_CONTAINER_TRACK_T **p_track )
{
   VC_CONTAINER_TRACK_T *track = ((void*)0);
   VC_CONTAINER_TRACK_MODULE_T *t_module = ((void*)0);
   char *ptr = media;
   char *media_type;
   char *rtp_port;
   char *transport_type;
   char *payload_type;

   *p_track = ((void*)0);
   if (p_ctx->tracks_num == RTSP_TRACKS_MAX)
   {
      LOG_DEBUG(p_ctx, "RTSP: Too many media items in SDP data, only %d are supported.", RTSP_TRACKS_MAX);
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }




   media_type = rtsp_parse_extract_ws(&ptr);
   rtp_port = rtsp_parse_extract_ws(&ptr);
   transport_type = rtsp_parse_extract_ws(&ptr);
   payload_type = rtsp_parse_extract_ws(&ptr);
   if (!*media_type || !*rtp_port || strcmp(transport_type, "RTP/AVP") || !*payload_type)
   {
      LOG_ERROR(p_ctx, "RTSP: Failure to parse media field");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   track = vc_container_allocate_track(p_ctx, sizeof(VC_CONTAINER_TRACK_MODULE_T));
   if (!track) goto out_of_memory_error;
   t_module = track->priv->module;



   sscanf(rtp_port, "%hu", &t_module->rtp_port);
   t_module->payload_type = payload_type;
   t_module->media_type = media_type;

   t_module->reader_uri = vc_uri_create();
   if (!t_module->reader_uri) goto out_of_memory_error;
   if (!vc_uri_set_scheme(t_module->reader_uri, RTP_SCHEME)) goto out_of_memory_error;
   if (!vc_uri_add_query(t_module->reader_uri, PAYLOAD_TYPE_NAME, payload_type)) goto out_of_memory_error;

   p_ctx->tracks[p_ctx->tracks_num++] = track;
   *p_track = track;
   return VC_CONTAINER_SUCCESS;

out_of_memory_error:
   if (track)
   {
      if (t_module->reader_uri)
         vc_uri_release(t_module->reader_uri);
      vc_container_free_track(p_ctx, track);
   }
   LOG_ERROR(p_ctx, "RTSP: Memory allocation failure creating track");
   return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
}
