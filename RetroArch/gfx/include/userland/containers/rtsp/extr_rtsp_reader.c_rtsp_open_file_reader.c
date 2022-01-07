
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int VC_URI_PARTS_T ;
struct TYPE_14__ {int reader_uri; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_15__ {TYPE_3__* priv; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {TYPE_2__* module; TYPE_1__* io; } ;
struct TYPE_12__ {int media_item; } ;
struct TYPE_11__ {char* uri; } ;


 int LOG_ERROR (TYPE_5__*,char*,...) ;
 char* RTP_PATH_EXTENSION_FORMAT ;
 int RTP_PATH_EXTRA ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ calloc (int,int) ;
 int free (char*) ;
 int rtsp_open_track_reader (TYPE_5__*,TYPE_4__*) ;
 int snprintf (char*,int,char*,int ) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 int * vc_uri_create () ;
 int vc_uri_parse (int *,char*) ;
 char* vc_uri_path (int *) ;
 int vc_uri_release (int *) ;
 int vc_uri_set_path (int ,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_open_file_reader( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module )
{
   VC_CONTAINER_STATUS_T status;
   VC_URI_PARTS_T *rtsp_uri = ((void*)0);
   const char *rtsp_path;
   int len;
   char *new_path = ((void*)0);
   char *extension;




   rtsp_uri = vc_uri_create();
   if (!rtsp_uri)
   {
      LOG_ERROR(p_ctx, "RTSP: Failed to create RTSP URI");
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto tidy_up;
   }

   if (!vc_uri_parse(rtsp_uri, p_ctx->priv->io->uri))
   {
      LOG_ERROR(p_ctx, "RTSP: Failed to parse RTSP URI <%s>", p_ctx->priv->io->uri);
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   rtsp_path = vc_uri_path(rtsp_uri);
   if (!rtsp_path || !*rtsp_path)
   {
      LOG_ERROR(p_ctx, "RTSP: RTSP URI path missing <%s>", p_ctx->priv->io->uri);
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   len = strlen(rtsp_path);
   new_path = (char *)calloc(1, len + RTP_PATH_EXTRA + 1);
   if (!rtsp_uri)
   {
      LOG_ERROR(p_ctx, "RTSP: Failed to create buffer for RTP path");
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto tidy_up;
   }

   strncpy(new_path, rtsp_path, len);
   extension = strrchr(new_path, '.');
   if (!extension)
      extension = new_path + strlen(new_path);

   snprintf(extension, len + RTP_PATH_EXTRA - (extension - new_path),
            RTP_PATH_EXTENSION_FORMAT, p_ctx->priv->module->media_item);
   if (!vc_uri_set_path(t_module->reader_uri, new_path))
   {
      LOG_ERROR(p_ctx, "RTSP: Failed to store RTP path <%s>", new_path);
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto tidy_up;
   }

   free(new_path);
   vc_uri_release(rtsp_uri);

   return rtsp_open_track_reader(p_ctx, t_module);

tidy_up:
   if (new_path) free(new_path);
   if (rtsp_uri) vc_uri_release(rtsp_uri);
   return status;
}
