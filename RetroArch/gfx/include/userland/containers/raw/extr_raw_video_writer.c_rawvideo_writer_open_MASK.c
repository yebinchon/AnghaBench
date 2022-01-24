#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv; int /*<<< orphan*/ * tracks; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int yuv4mpeg2; int /*<<< orphan*/  track; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_write; int /*<<< orphan*/  pf_close; TYPE_3__* module; int /*<<< orphan*/  uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rawvideo_writer_close ; 
 int /*<<< orphan*/  rawvideo_writer_control ; 
 int /*<<< orphan*/  rawvideo_writer_write ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   const char *extension = FUNC5(ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module;
   bool yuv4mpeg2 = false;

   /* Check if the user has specified a container */
   FUNC4(ctx->priv->uri, 0, "container", &extension);

   /* Check we're the right writer for this */
   if(!extension)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(!FUNC3(extension, "y4m") || !FUNC3(extension, "yuv4mpeg2"))
      yuv4mpeg2 = true;
   if(!yuv4mpeg2 && FUNC3(extension, "yuv"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   FUNC0(ctx, "using rawvideo writer");

   /* Allocate our context */
   module = FUNC1(sizeof(*module));
   if (!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC2(module, 0, sizeof(*module));
   ctx->priv->module = module;
   ctx->tracks = &module->track;
   module->yuv4mpeg2 = yuv4mpeg2;

   ctx->priv->pf_close = rawvideo_writer_close;
   ctx->priv->pf_write = rawvideo_writer_write;
   ctx->priv->pf_control = rawvideo_writer_control;
   return VC_CONTAINER_SUCCESS;

 error:
   FUNC0(ctx, "rawvideo: error opening stream (%i)", status);
   return status;
}