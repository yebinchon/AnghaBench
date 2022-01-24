#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_URI_PARTS_T ;
struct TYPE_14__ {int /*<<< orphan*/  reader_uri; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_15__ {TYPE_3__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {TYPE_2__* module; TYPE_1__* io; } ;
struct TYPE_12__ {int /*<<< orphan*/  media_item; } ;
struct TYPE_11__ {char* uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 char* RTP_PATH_EXTENSION_FORMAT ; 
 int RTP_PATH_EXTRA ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC13( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module )
{
   VC_CONTAINER_STATUS_T status;
   VC_URI_PARTS_T *rtsp_uri = NULL;
   const char *rtsp_path;
   int len;
   char *new_path = NULL;
   char *extension;

   /* Use the RTSP URI's path, with the extension changed to ".t<track>.pkt"
    * where <track> is the zero-based media item number. */

   rtsp_uri = FUNC8();
   if (!rtsp_uri)
   {
      FUNC0(p_ctx, "RTSP: Failed to create RTSP URI");
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto tidy_up;
   }

   if (!FUNC9(rtsp_uri, p_ctx->priv->io->uri))
   {
      FUNC0(p_ctx, "RTSP: Failed to parse RTSP URI <%s>", p_ctx->priv->io->uri);
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   rtsp_path = FUNC10(rtsp_uri);
   if (!rtsp_path || !*rtsp_path)
   {
      FUNC0(p_ctx, "RTSP: RTSP URI path missing <%s>", p_ctx->priv->io->uri);
      status = VC_CONTAINER_ERROR_FORMAT_INVALID;
      goto tidy_up;
   }

   len = FUNC5(rtsp_path);
   new_path = (char *)FUNC1(1, len + RTP_PATH_EXTRA + 1);
   if (!rtsp_uri)
   {
      FUNC0(p_ctx, "RTSP: Failed to create buffer for RTP path");
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto tidy_up;
   }

   FUNC6(new_path, rtsp_path, len);
   extension = FUNC7(new_path, '.');          /* Find extension, to replace it */
   if (!extension)
      extension = new_path + FUNC5(new_path);  /* No extension, so append instead */

   FUNC4(extension, len + RTP_PATH_EXTRA - (extension - new_path),
            RTP_PATH_EXTENSION_FORMAT, p_ctx->priv->module->media_item);
   if (!FUNC12(t_module->reader_uri, new_path))
   {
      FUNC0(p_ctx, "RTSP: Failed to store RTP path <%s>", new_path);
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto tidy_up;
   }

   FUNC2(new_path);
   FUNC11(rtsp_uri);

   return FUNC3(p_ctx, t_module);

tidy_up:
   if (new_path) FUNC2(new_path);
   if (rtsp_uri) FUNC11(rtsp_uri);
   return status;
}