#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  uri_parts; TYPE_2__* module; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {char* comms_buffer; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  HEAD_METHOD ; 
 char* HTTP_REQUEST_LINE_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* TRAILING_HEADERS_FORMAT ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5(VC_CONTAINER_IO_T *p_ctx)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   char *ptr = module->comms_buffer, *end = ptr + sizeof(module->comms_buffer);

   ptr += FUNC2(ptr, end - ptr, HTTP_REQUEST_LINE_FORMAT, HEAD_METHOD,
                   FUNC4(p_ctx->uri_parts), FUNC3(p_ctx->uri_parts));
   if (ptr < end)
      ptr += FUNC2(ptr, end - ptr, TRAILING_HEADERS_FORMAT);

   if (ptr >= end)
   {
      FUNC0(0, "comms buffer too small (%i/%u)", (int)(end - ptr),
                sizeof(module->comms_buffer));
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   }

   return FUNC1(p_ctx);
}