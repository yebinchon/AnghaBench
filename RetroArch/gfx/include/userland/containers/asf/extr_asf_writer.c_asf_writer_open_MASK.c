#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__* tracks; TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {int /*<<< orphan*/  null; scalar_t__* tracks; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_11__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_write; int /*<<< orphan*/  pf_close; TYPE_3__* module; int /*<<< orphan*/  uri; } ;

/* Variables and functions */
 unsigned int ASF_TRACKS_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  asf_writer_close ; 
 int /*<<< orphan*/  asf_writer_control ; 
 int /*<<< orphan*/  asf_writer_write ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC9( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   const char *extension = FUNC8(p_ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module = 0;
   unsigned int i;

   /* Check if the user has specified a container */
   FUNC7(p_ctx->priv->uri, 0, "container", &extension);

   /* Check we're the right writer for this */
   if(!extension)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(FUNC4(extension, "asf") && FUNC4(extension, "wmv") &&
      FUNC4(extension, "wma"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /* Allocate our context */
   module = FUNC2(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC3(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->tracks;

   /* Create a null i/o writer to help us out in writing our data */
   status = FUNC6(p_ctx, &module->null);
   if(status != VC_CONTAINER_SUCCESS) goto error;

   /* We'll only write the header once we've got all our tracks */

   p_ctx->priv->pf_close = asf_writer_close;
   p_ctx->priv->pf_write = asf_writer_write;
   p_ctx->priv->pf_control = asf_writer_control;
   return VC_CONTAINER_SUCCESS;

 error:
   FUNC0(p_ctx, "asf: error opening stream");
   for(i = 0; i < ASF_TRACKS_MAX && p_ctx->tracks && p_ctx->tracks[i]; i++)
      FUNC5(p_ctx, p_ctx->tracks[i]);
   FUNC1(module);
   return status;
}