#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* session_header; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_12__ {TYPE_1__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {int /*<<< orphan*/  header_list; } ;
typedef  TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_10__ {TYPE_4__* module; } ;

/* Variables and functions */
 size_t SESSION_HEADER_LENGTH_MAX ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC0 (size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   const char *session_header;
   size_t session_header_len;

   status = FUNC3(p_ctx, t_module);
   if (status != VC_CONTAINER_SUCCESS) return status;
   status = FUNC2(p_ctx);
   if (status != VC_CONTAINER_SUCCESS) return status;

   session_header = FUNC1(module->header_list);
   session_header_len = FUNC4(session_header);
   if (session_header_len > SESSION_HEADER_LENGTH_MAX) return VC_CONTAINER_ERROR_FORMAT_INVALID;

   t_module->session_header = (char *)FUNC0(session_header_len + 1);
   if (!t_module->session_header) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   FUNC5(t_module->session_header, session_header, session_header_len);

   return status;
}