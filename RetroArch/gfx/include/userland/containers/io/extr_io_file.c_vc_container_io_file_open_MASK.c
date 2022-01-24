#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {char* uri; unsigned long max_size; int /*<<< orphan*/  capabilities; TYPE_2__* module; int /*<<< orphan*/  size; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_write; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  pf_close; int /*<<< orphan*/  uri_parts; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_7__ {int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
typedef  scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_URI_NOT_FOUND ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_CAPS_NO_CACHING ; 
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  io_file_close ; 
 int /*<<< orphan*/  io_file_read ; 
 int /*<<< orphan*/  io_file_seek ; 
 int /*<<< orphan*/  io_file_write ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC9( VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = 0;
   const char *psz_mode = mode == VC_CONTAINER_IO_MODE_WRITE ? "wb+" : "rb";
   const char *uri = p_ctx->uri;
   FILE *stream = 0;
   FUNC0(unused);

   if(FUNC8(p_ctx->uri_parts))
      uri = FUNC8(p_ctx->uri_parts);

   stream = FUNC2(uri, psz_mode);
   if(!stream) { status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }

   /* Turn off buffering. The container layer will provide its own cache */
   FUNC7(stream, NULL, _IONBF, 0);

   module = FUNC5( sizeof(*module) );
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC6(module, 0, sizeof(*module));

   p_ctx->module = module;
   module->stream = stream;
   p_ctx->pf_close = io_file_close;
   p_ctx->pf_read = io_file_read;
   p_ctx->pf_write = io_file_write;
   p_ctx->pf_seek = io_file_seek;

   if(mode == VC_CONTAINER_IO_MODE_WRITE)
   {
      p_ctx->max_size = (1UL<<31)-1; /* For now limit to 2GB */
   }
   else
   {
      //FIXME: large file support, platform-specific file size
      FUNC3(p_ctx->module->stream, 0, SEEK_END);
      p_ctx->size = FUNC4(p_ctx->module->stream);
      FUNC3(p_ctx->module->stream, 0, SEEK_SET);
   }

   p_ctx->capabilities = VC_CONTAINER_IO_CAPS_NO_CACHING;
   return VC_CONTAINER_SUCCESS;

 error:
   if(stream) FUNC1(stream);
   return status;
}