#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__* priv; int /*<<< orphan*/  tracks; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_21__ {scalar_t__ io; } ;
struct TYPE_20__ {TYPE_5__ null; void* data_offset; void* mdat_offset; int /*<<< orphan*/  temp; int /*<<< orphan*/  brand; int /*<<< orphan*/  tracks; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_write; int /*<<< orphan*/  pf_close; TYPE_3__* module; int /*<<< orphan*/  uri; } ;
typedef  int /*<<< orphan*/  MP4_BRAND_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  MP4_BOX_TYPE_FTYP ; 
 int /*<<< orphan*/  MP4_BRAND_3GP5 ; 
 int /*<<< orphan*/  MP4_BRAND_ISOM ; 
 int /*<<< orphan*/  MP4_BRAND_QT ; 
 int /*<<< orphan*/  MP4_BRAND_SKM2 ; 
 void* FUNC1 (TYPE_2__*) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp4_writer_close ; 
 int /*<<< orphan*/  mp4_writer_control ; 
 int /*<<< orphan*/  mp4_writer_write ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC15( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   const char *extension = FUNC14(p_ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module = 0;
   MP4_BRAND_T brand;

   /* Check if the user has specified a container */
   FUNC13(p_ctx->priv->uri, 0, "container", &extension);

   /* Check we're the right writer for this */
   if(!extension)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(FUNC9(extension, "3gp") && FUNC9(extension, "skm") &&
      FUNC9(extension, "mov") && FUNC9(extension, "mp4") &&
      FUNC9(extension, "m4v") && FUNC9(extension, "m4a"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /* Allocate our context */
   module = FUNC6(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC7(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->tracks;

   /* Find out which brand we're going write */
   if(!FUNC9(extension, "3gp")) brand = MP4_BRAND_3GP5;
   else if(!FUNC9(extension, "skm")) brand = MP4_BRAND_SKM2;
   else if(!FUNC9(extension, "mov")) brand = MP4_BRAND_QT;
   else brand = MP4_BRAND_ISOM;
   module->brand = brand;

   /* Create a null i/o writer to help us out in writing our data */
   status = FUNC10(p_ctx, &module->null);
   if(status != VC_CONTAINER_SUCCESS) goto error;

   /* Create a temporary i/o writer to help us out in writing our data */
   status = FUNC11(p_ctx, &module->temp);
   if(status != VC_CONTAINER_SUCCESS) goto error;

   status = FUNC8(p_ctx, MP4_BOX_TYPE_FTYP);
   if(status != VC_CONTAINER_SUCCESS) goto error;

   /* Start the mdat box */
   module->mdat_offset = FUNC1(p_ctx);
   FUNC4(p_ctx, 0, "size");
   FUNC3(p_ctx, FUNC2('m','d','a','t'), "type");
   module->data_offset = FUNC1(p_ctx);

   p_ctx->priv->pf_close = mp4_writer_close;
   p_ctx->priv->pf_write = mp4_writer_write;
   p_ctx->priv->pf_control = mp4_writer_control;
   return VC_CONTAINER_SUCCESS;

 error:
   FUNC0(p_ctx, "mp4: error opening stream");
   if(module)
   {
      if(module->null.io) FUNC12(p_ctx, &module->null);
      FUNC5(module);
   }
   return status;
}