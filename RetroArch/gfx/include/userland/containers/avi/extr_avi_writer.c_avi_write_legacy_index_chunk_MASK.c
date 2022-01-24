#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_19__ {TYPE_1__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_18__ {int /*<<< orphan*/  io; } ;
struct TYPE_17__ {scalar_t__ refcount; } ;
struct TYPE_20__ {TYPE_3__ temp_io; int /*<<< orphan*/  index_offset; TYPE_2__ null_io; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_16__ {TYPE_5__* module; } ;

/* Variables and functions */
 int AVIIF_KEYFRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int AVI_INDEX_DELTAFRAME ; 
 scalar_t__ AVI_INDEX_ENTRY_SIZE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC13( VC_CONTAINER_T *p_ctx, uint32_t index_size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status;
   uint32_t chunk_offset = 4;
   unsigned int track_num;

   FUNC11(8 + FUNC9(p_ctx) * FUNC1(16) <= (int64_t)ULONG_MAX);

   if(module->null_io.refcount)
   {
      /* Assume that we're not actually writing the data,
         just want know the index size */
      FUNC5(p_ctx, NULL, 8 + FUNC9(p_ctx) * (int64_t)AVI_INDEX_ENTRY_SIZE);
      return FUNC3(p_ctx);
   }

   module->index_offset = FUNC2(p_ctx);

   FUNC6(p_ctx, FUNC4('i','d','x','1'), "Chunk ID");
   FUNC7(p_ctx, index_size, "Chunk Size");

   /* Scan through all written entries, convert to appropriate index format */
   FUNC12(module->temp_io.io, FUNC1(0));

   while((status = FUNC3(p_ctx)) == VC_CONTAINER_SUCCESS)
   {
      VC_CONTAINER_FOURCC_T chunk_id;
      uint32_t chunk_size, flags;

      status = FUNC10(p_ctx, &track_num, &chunk_size);
      if (status != VC_CONTAINER_SUCCESS) break;

      FUNC8(p_ctx, &chunk_id, track_num);
      flags = (chunk_size & AVI_INDEX_DELTAFRAME) ? 0 : AVIIF_KEYFRAME;
      chunk_size &= ~AVI_INDEX_DELTAFRAME;

      FUNC6(p_ctx, chunk_id, "Chunk ID");
      FUNC7(p_ctx, flags, "dwFlags");
      FUNC7(p_ctx, chunk_offset, "dwOffset");
      FUNC7(p_ctx, chunk_size, "dwSize");

      chunk_offset += ((chunk_size + 1) & ~1) + 8;
   }

   FUNC0(p_ctx);

   /* Note that currently, we might write a partial index but still set AVIF_HASINDEX */
   /* if ( STREAM_STATUS(p_ctx) != VC_CONTAINER_SUCCESS ) module->index_offset = 0 */

   return FUNC3(p_ctx);
}