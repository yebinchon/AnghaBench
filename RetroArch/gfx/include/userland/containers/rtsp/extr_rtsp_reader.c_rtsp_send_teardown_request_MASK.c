#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* control_uri; int /*<<< orphan*/  session_header; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_11__ {TYPE_1__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {char* comms_buffer; int /*<<< orphan*/  cseq_value; } ;
typedef  TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_4__* module; } ;

/* Variables and functions */
 int COMMS_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,scalar_t__,scalar_t__) ; 
 char* RTSP_REQUEST_LINE_FORMAT ; 
 scalar_t__ RTSP_URI_LENGTH_MAX ; 
 char* SESSION_HEADER_FORMAT ; 
 int /*<<< orphan*/  TEARDOWN_METHOD ; 
 char* TRAILING_HEADERS_FORMAT ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_URI_OPEN_FAILED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   char *ptr = module->comms_buffer, *end = ptr + COMMS_BUFFER_SIZE;
   char *uri = t_module->control_uri;

   if (FUNC3(uri) > RTSP_URI_LENGTH_MAX)
   {
      FUNC0(p_ctx, "RTSP: Control URI is too long (%d>%d)", FUNC3(uri), RTSP_URI_LENGTH_MAX);
      return VC_CONTAINER_ERROR_URI_OPEN_FAILED;
   }

   ptr += FUNC2(ptr, end - ptr, RTSP_REQUEST_LINE_FORMAT, TEARDOWN_METHOD, uri);
   if (ptr < end)
      ptr += FUNC2(ptr, end - ptr, SESSION_HEADER_FORMAT, t_module->session_header);
   if (ptr < end)
      ptr += FUNC2(ptr, end - ptr, TRAILING_HEADERS_FORMAT, module->cseq_value++);
   FUNC4(ptr < end);

   return FUNC1(p_ctx);
}