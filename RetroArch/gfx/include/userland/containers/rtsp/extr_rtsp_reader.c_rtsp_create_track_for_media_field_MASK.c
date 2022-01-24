#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_15__ {char* payload_type; char* media_type; scalar_t__ reader_uri; int /*<<< orphan*/  rtp_port; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_16__ {scalar_t__ tracks_num; TYPE_2__** tracks; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {TYPE_3__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  PAYLOAD_TYPE_NAME ; 
 int /*<<< orphan*/  RTP_SCHEME ; 
 scalar_t__ RTSP_TRACKS_MAX ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 char* FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 TYPE_2__* FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC11(VC_CONTAINER_T *p_ctx,
      char *media,
      VC_CONTAINER_TRACK_T **p_track )
{
   VC_CONTAINER_TRACK_T *track = NULL;
   VC_CONTAINER_TRACK_MODULE_T *t_module = NULL;
   char *ptr = media;
   char *media_type;
   char *rtp_port;
   char *transport_type;
   char *payload_type;

   *p_track = NULL;
   if (p_ctx->tracks_num == RTSP_TRACKS_MAX)
   {
      FUNC0(p_ctx, "RTSP: Too many media items in SDP data, only %d are supported.", RTSP_TRACKS_MAX);
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   /* Format of media item:
    *    m=<media type> <port> <transport> <payload type(s)>
    * Only RTP/AVP transport and the first payload type are supported */
   media_type = FUNC2(&ptr);
   rtp_port = FUNC2(&ptr);
   transport_type = FUNC2(&ptr);
   payload_type = FUNC2(&ptr);
   if (!*media_type || !*rtp_port || FUNC4(transport_type, "RTP/AVP") || !*payload_type)
   {
      FUNC1(p_ctx, "RTSP: Failure to parse media field");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   track = FUNC5(p_ctx, sizeof(VC_CONTAINER_TRACK_MODULE_T));
   if (!track) goto out_of_memory_error;
   t_module = track->priv->module;

   /* If the port specifier is invalid, treat it as if it were zero */
   /* coverity[secure_coding] String is null-terminated */
   FUNC3(rtp_port, "%hu", &t_module->rtp_port);
   t_module->payload_type = payload_type;
   t_module->media_type = media_type;

   t_module->reader_uri = FUNC8();
   if (!t_module->reader_uri) goto out_of_memory_error;
   if (!FUNC10(t_module->reader_uri, RTP_SCHEME)) goto out_of_memory_error;
   if (!FUNC7(t_module->reader_uri, PAYLOAD_TYPE_NAME, payload_type)) goto out_of_memory_error;

   p_ctx->tracks[p_ctx->tracks_num++] = track;
   *p_track = track;
   return VC_CONTAINER_SUCCESS;

out_of_memory_error:
   if (track)
   {
      if (t_module->reader_uri)
         FUNC9(t_module->reader_uri);
      FUNC6(p_ctx, track);
   }
   FUNC1(p_ctx, "RTSP: Memory allocation failure creating track");
   return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
}