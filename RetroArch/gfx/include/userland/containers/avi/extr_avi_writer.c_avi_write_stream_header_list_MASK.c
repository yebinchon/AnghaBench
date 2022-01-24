#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_22__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_T ;
struct TYPE_23__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_24__ {int /*<<< orphan*/  null_io; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_21__ {scalar_t__ drmdata_size; scalar_t__ drmdata; } ;
struct TYPE_20__ {TYPE_5__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,char*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC12(VC_CONTAINER_T *p_ctx,
   unsigned int track_num, uint32_t list_size)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[track_num];
   VC_CONTAINER_STATUS_T status;
   uint32_t chunk_size = 0;

   FUNC5(p_ctx, FUNC3('L','I','S','T'), "Chunk ID");
   FUNC6(p_ctx, list_size, "LIST Size");
   FUNC5(p_ctx, FUNC3('s','t','r','l'), "Chunk ID");

   if ((status = FUNC2(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

   /* Write the stream header chunk ('strh') */
   status = FUNC8(p_ctx, track);
   if (status != VC_CONTAINER_SUCCESS) return status;

   /* Write the stream format chunk ('strf') */
   if(!FUNC11(p_ctx, &module->null_io))
   {
      status = FUNC7(p_ctx, track, 0);
      chunk_size = FUNC1(p_ctx) - 8;
   }
   FUNC10(p_ctx, &module->null_io);

   status = FUNC7(p_ctx, track, chunk_size);
   if (status != VC_CONTAINER_SUCCESS) return status;

   /* If the track has DRM data, write it into the 'strd' chunk (we don't write
      write codec configuration data into 'strd') */
   if (track->priv->drmdata && track->priv->drmdata_size)
   {
      FUNC5(p_ctx, FUNC3('s','t','r','d'), "Chunk ID");
      FUNC6(p_ctx, track->priv->drmdata_size, "Chunk Size");
      FUNC4(p_ctx, track->priv->drmdata, track->priv->drmdata_size);
      FUNC0(p_ctx);
      if ((status = FUNC2(p_ctx)) != VC_CONTAINER_SUCCESS) return status;
   }

   /* Write the super index chunk ('indx') */
   if(!FUNC11(p_ctx, &module->null_io))
   {
      status = FUNC9(p_ctx, track_num, 0);
      chunk_size = FUNC1(p_ctx) - 8;
   }
   FUNC10(p_ctx, &module->null_io);

   status = FUNC9(p_ctx, track_num, chunk_size);
   if (status != VC_CONTAINER_SUCCESS) return status;

   FUNC0(p_ctx);

   return FUNC2(p_ctx);
}