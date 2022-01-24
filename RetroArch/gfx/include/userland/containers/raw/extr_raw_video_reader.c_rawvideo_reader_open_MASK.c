#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_24__ {int tracks_num; TYPE_1__* priv; TYPE_7__** tracks; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_25__ {int frame_header; unsigned int block_size; int yuv4mpeg2; int /*<<< orphan*/  data_offset; TYPE_7__* track; } ;
typedef  TYPE_6__ VC_CONTAINER_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_26__ {int is_enabled; TYPE_4__* format; } ;
struct TYPE_23__ {TYPE_3__* type; int /*<<< orphan*/  codec; int /*<<< orphan*/  es_type; } ;
struct TYPE_21__ {int frame_rate_num; int frame_rate_den; int par_num; int par_den; unsigned int width; unsigned int height; } ;
struct TYPE_22__ {TYPE_2__ video; } ;
struct TYPE_20__ {int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  (* pf_close ) (TYPE_5__*) ;TYPE_6__* module; int /*<<< orphan*/  uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,char*,unsigned int,unsigned int,int,int,unsigned int) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_VIDEO ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 TYPE_6__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  rawvideo_reader_read ; 
 int /*<<< orphan*/  rawvideo_reader_seek ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 TYPE_7__* FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC15( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   const char *extension = FUNC14(ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module = 0;
   bool yuv4mpeg2 = false;
   uint8_t h[10];

   /* Check if the user has specified a container */
   FUNC13(ctx->priv->uri, 0, "container", &extension);

   /* Check for the YUV4MPEG2 signature */
   if (FUNC2(ctx, h, sizeof(h)) != sizeof(h))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if (!FUNC5(h, "YUV4MPEG2 ", sizeof(h)))
      yuv4mpeg2 = true;

   /* Or check if the extension is supported */
   if (!yuv4mpeg2 &&
       !(extension && !FUNC11(extension, "yuv")))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   FUNC0(ctx, "using raw video reader");

   /* Allocate our context */
   module = FUNC4(sizeof(*module));
   if (!module) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   FUNC6(module, 0, sizeof(*module));
   ctx->priv->module = module;
   ctx->tracks_num = 1;
   ctx->tracks = &module->track;
   ctx->tracks[0] = FUNC12(ctx, 0);
   if (!ctx->tracks[0])
   {
      status = VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      goto error;
   }
   ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_VIDEO;
   ctx->tracks[0]->is_enabled = true;
   ctx->tracks[0]->format->type->video.frame_rate_num = 25;
   ctx->tracks[0]->format->type->video.frame_rate_den = 1;
   ctx->tracks[0]->format->type->video.par_num = 1;
   ctx->tracks[0]->format->type->video.par_den = 1;

   if (yuv4mpeg2)
   {
      status = FUNC9(ctx);
      if (status != VC_CONTAINER_SUCCESS)
         goto error;

      module->data_offset = FUNC3(ctx);

      status = FUNC10(ctx);
      if (status != VC_CONTAINER_SUCCESS)
         goto error;
      module->frame_header = true;
   }
   else
   {
      VC_CONTAINER_FOURCC_T codec;
      unsigned int width, height, fr_num, fr_den, block_size;

      status = FUNC7(ctx, &codec, &width, &height,
         &fr_num, &fr_den, &block_size);
      if (status != VC_CONTAINER_SUCCESS)
         goto error;
      ctx->tracks[0]->format->codec = codec;
      ctx->tracks[0]->format->type->video.width = width;
      ctx->tracks[0]->format->type->video.height = height;
      if (fr_num && fr_den)
      {
         ctx->tracks[0]->format->type->video.frame_rate_num = fr_num;
         ctx->tracks[0]->format->type->video.frame_rate_den = fr_den;
      }
      module->block_size = block_size;
   }

   /*
    *  We now have all the information we really need to start playing the stream
    */

   FUNC1(ctx, "rawvideo %4.4s/%ix%i/fps:%i:%i/size:%i",
      (char *)&ctx->tracks[0]->format->codec,
      ctx->tracks[0]->format->type->video.width,
      ctx->tracks[0]->format->type->video.height,
      ctx->tracks[0]->format->type->video.frame_rate_num,
      ctx->tracks[0]->format->type->video.frame_rate_den, module->block_size);
   ctx->priv->pf_close = rawvideo_reader_close;
   ctx->priv->pf_read = rawvideo_reader_read;
   ctx->priv->pf_seek = rawvideo_reader_seek;
   module->yuv4mpeg2 = yuv4mpeg2;
   return VC_CONTAINER_SUCCESS;

 error:
   FUNC0(ctx, "rawvideo: error opening stream (%i)", status);
   FUNC8(ctx);
   return status;
}