#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_26__ {int chunk_index; int /*<<< orphan*/  index_size; int /*<<< orphan*/  index_offset; } ;
typedef  TYPE_6__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_27__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_7__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_25__ {int /*<<< orphan*/  io; } ;
struct TYPE_24__ {scalar_t__ refcount; } ;
struct TYPE_28__ {int data_offset; TYPE_5__ temp_io; TYPE_4__ null_io; } ;
typedef  TYPE_8__ VC_CONTAINER_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_23__ {TYPE_2__* priv; } ;
struct TYPE_22__ {TYPE_6__* module; } ;
struct TYPE_21__ {TYPE_8__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int AVI_INDEX_DELTAFRAME ; 
 int /*<<< orphan*/  AVI_INDEX_OF_CHUNKS ; 
 scalar_t__ AVI_STD_INDEX_ENTRY_SIZE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 scalar_t__ ULONG_MAX ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC12 (TYPE_7__*,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC15( VC_CONTAINER_T *p_ctx, unsigned int index_track_num,
   uint32_t index_size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[index_track_num]->priv->module;
   VC_CONTAINER_STATUS_T status;
   VC_CONTAINER_FOURCC_T chunk_id;
   int64_t base_offset = module->data_offset + 12;
   uint32_t num_chunks = track_module->chunk_index;
   uint32_t chunk_offset = 4;

   FUNC13(32 + num_chunks * (int64_t)AVI_STD_INDEX_ENTRY_SIZE <= (int64_t)ULONG_MAX);

   if(module->null_io.refcount)
   {
      /* Assume that we're not actually writing the data, just want know the index chunk size */
      FUNC4(p_ctx, NULL, 8 + 24 + num_chunks * FUNC1(8));
      return FUNC3(p_ctx);
   }

   track_module->index_offset = FUNC2(p_ctx);
   track_module->index_size = index_size ? (index_size - 8) : 0;

   FUNC11(&chunk_id, index_track_num);
   FUNC5(p_ctx, chunk_id, "Chunk ID");
   FUNC7(p_ctx, index_size, "Chunk Size");

   FUNC10(p_ctx, &chunk_id, index_track_num);
   FUNC6(p_ctx, 2, "wLongsPerEntry");
   FUNC9(p_ctx, 0, "bIndexSubType");
   FUNC9(p_ctx, AVI_INDEX_OF_CHUNKS, "bIndexType");
   FUNC7(p_ctx, num_chunks, "nEntriesInUse");
   FUNC5(p_ctx, chunk_id, "dwChunkId");
   FUNC8(p_ctx, base_offset, "qwBaseOffset");
   FUNC7(p_ctx, 0, "dwReserved");

   /* Scan through all written entries, convert to appropriate index format */
   FUNC14(module->temp_io.io, FUNC1(0));

   while(FUNC3(p_ctx) == VC_CONTAINER_SUCCESS)
   {
      uint32_t chunk_size;
      unsigned int track_num;

      status = FUNC12(p_ctx, &track_num, &chunk_size);
      if (status != VC_CONTAINER_SUCCESS) break;

      if(track_num != index_track_num) continue;

      FUNC7(p_ctx, chunk_offset, "dwOffset");
      FUNC7(p_ctx, chunk_size, "dwSize");

      chunk_offset += ((chunk_size + 1) & ~(1 | AVI_INDEX_DELTAFRAME)) + 12;
   }

   FUNC0(p_ctx);

   return FUNC3(p_ctx);
}