#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_7__ {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  pf_write; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  pf_close; TYPE_2__* module; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_8__ {int is_native_order; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
typedef  scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_CAPS_CANT_SEEK ; 
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  io_pktfile_close ; 
 int /*<<< orphan*/  io_pktfile_read ; 
 int /*<<< orphan*/  io_pktfile_write ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = 0;
   FILE *stream = 0;
   bool is_native_order = true;
   FUNC0(unused);

   stream = FUNC4(p_ctx, mode, &status);
   if (status != VC_CONTAINER_SUCCESS) goto error;

   if (mode == VC_CONTAINER_IO_MODE_WRITE)
      status = FUNC6(stream);
   else
      status = FUNC5(stream, &is_native_order);
   if (status != VC_CONTAINER_SUCCESS) goto error;

   module = FUNC2( sizeof(*module) );
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC3(module, 0, sizeof(*module));

   p_ctx->module = module;
   module->stream = stream;
   module->is_native_order = is_native_order;
   p_ctx->pf_close = io_pktfile_close;
   p_ctx->pf_read = io_pktfile_read;
   p_ctx->pf_write = io_pktfile_write;

   /* Do not allow caching by I/O core, as this will merge packets in the cache. */
   p_ctx->capabilities = VC_CONTAINER_IO_CAPS_CANT_SEEK;
   return VC_CONTAINER_SUCCESS;

error:
   if(stream) FUNC1(stream);
   return status;
}