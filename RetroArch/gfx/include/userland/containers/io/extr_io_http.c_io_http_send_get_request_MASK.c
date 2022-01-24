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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  uri_parts; TYPE_2__* module; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {char* comms_buffer; scalar_t__ cur_offset; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_MODULE_T ;

/* Variables and functions */
 scalar_t__ ENABLE_HTTP_EXTRA_LOGGING ; 
 int /*<<< orphan*/  GET_METHOD ; 
 char* HTTP_RANGE_REQUEST ; 
 char* HTTP_REQUEST_LINE_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* TRAILING_HEADERS_FORMAT ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6(VC_CONTAINER_IO_T *p_ctx, size_t size)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   char *ptr = module->comms_buffer, *end = ptr + sizeof(module->comms_buffer);
   int64_t end_offset;

   ptr += FUNC3(ptr, end - ptr, HTTP_REQUEST_LINE_FORMAT, GET_METHOD,
                   FUNC5(p_ctx->uri_parts), FUNC4(p_ctx->uri_parts));

   end_offset = module->cur_offset + size - 1;
   if (end_offset >= p_ctx->size)
      end_offset = p_ctx->size - 1;

   if (ptr < end)
      ptr += FUNC3(ptr, end - ptr, HTTP_RANGE_REQUEST, module->cur_offset, end_offset);

   if (ptr < end)
      ptr += FUNC3(ptr, end - ptr, TRAILING_HEADERS_FORMAT);

   if (ptr >= end)
   {
      FUNC1(0, "comms buffer too small (%i/%u)", (int)(end - ptr),
                sizeof(module->comms_buffer));
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   }

   if (ENABLE_HTTP_EXTRA_LOGGING)
      FUNC0(NULL, "Sending server read request:\n%s\n---------------------\n", module->comms_buffer);
   return FUNC2(p_ctx);
}