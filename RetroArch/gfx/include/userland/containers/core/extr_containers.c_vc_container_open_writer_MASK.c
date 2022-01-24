#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* priv; } ;
typedef  TYPE_1__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  void* VC_CONTAINER_PROGRESS_REPORT_FUNC_T ;
struct TYPE_13__ {int /*<<< orphan*/  uri; TYPE_3__* io; int /*<<< orphan*/  verbosity; } ;
typedef  TYPE_2__ VC_CONTAINER_PRIVATE_T ;
struct TYPE_14__ {scalar_t__ max_size; int /*<<< orphan*/  uri_parts; } ;
typedef  TYPE_3__ VC_CONTAINER_IO_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ WRITER_SPACE_SAFETY_MARGIN ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_T *FUNC11( const char *uri, VC_CONTAINER_STATUS_T *p_status,
   VC_CONTAINER_PROGRESS_REPORT_FUNC_T pfn_progress, void *progress_userdata)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_T *p_ctx = 0;
   VC_CONTAINER_IO_T *io;
   const char *extension;
   FUNC1(pfn_progress);
   FUNC1(progress_userdata);

   /* Start by opening the URI */
   io = FUNC6( uri, VC_CONTAINER_IO_MODE_WRITE, &status );
   if(!io) goto error;

   /* Make sure we have enough space available to start writing */
   if(io->max_size && io->max_size < WRITER_SPACE_SAFETY_MARGIN)
   {
      FUNC0(p_ctx, "not enough space available to open a writer");
      status = VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
      goto error;
   }

   /* Allocate our context before trying out the different readers / writers */
   p_ctx = FUNC2( sizeof(*p_ctx) + sizeof(*p_ctx->priv));
   if(!p_ctx) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC3(p_ctx, 0, sizeof(*p_ctx) + sizeof(*p_ctx->priv));
   p_ctx->priv = (VC_CONTAINER_PRIVATE_T *)(p_ctx + 1);
   p_ctx->priv->verbosity = FUNC8();
   p_ctx->priv->io = io;
   p_ctx->priv->uri = io->uri_parts;
   io = NULL; /* io now owned by the context */

   /* If the uri has an extension, use it as a hint when loading the container */
   extension = FUNC10(p_ctx->priv->uri);
   /* If the user has specified a container, then use that instead */
   FUNC9(p_ctx->priv->uri, 0, "container", &extension);

   status = FUNC7(p_ctx, extension);
   if(status != VC_CONTAINER_SUCCESS) goto error;

 end:
   if(p_status) *p_status = status;
   return p_ctx;

error:
   if(io) FUNC5(io);
   if (p_ctx) FUNC4(p_ctx);
   p_ctx = NULL;
   goto end;
}