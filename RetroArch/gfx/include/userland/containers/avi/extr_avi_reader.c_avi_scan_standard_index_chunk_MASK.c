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
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_21__ {int offs; int /*<<< orphan*/  time_pos; int /*<<< orphan*/  index; scalar_t__ flags; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {TYPE_5__ chunk; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_20__ {TYPE_2__** tracks; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_SEEK_FLAGS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_18__ {TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_3__* module; } ;
typedef  TYPE_5__ AVI_TRACK_CHUNK_STATE_T ;

/* Variables and functions */
 int AVI_INDEX_DELTAFRAME ; 
 scalar_t__ AVI_INDEX_OF_CHUNKS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 unsigned int FUNC3 (TYPE_4__*,char*) ; 
 int FUNC4 (TYPE_4__*,char*) ; 
 int FUNC5 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_NOT_FOUND ; 
 scalar_t__ VC_CONTAINER_PACKET_FLAG_KEYFRAME ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,unsigned int,unsigned int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC15(VC_CONTAINER_T *p_ctx, uint64_t index_offset,
   unsigned seek_track_num, int64_t *time, VC_CONTAINER_SEEK_FLAGS_T flags, uint64_t *pos)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_NOT_FOUND;
   VC_CONTAINER_TRACK_MODULE_T *track_module = NULL;
   VC_CONTAINER_FOURCC_T chunk_id;
   uint32_t chunk_size;
   uint16_t data_type, track_num;
   uint8_t index_type, index_sub_type;
   uint32_t entry, entry_count = 0;
   uint16_t entry_size;
   uint64_t base_offset = FUNC10(0);
   uint64_t position = FUNC10(0);
   uint64_t prev_keyframe_offs = FUNC0(0);
   AVI_TRACK_CHUNK_STATE_T prev_keyframe_chunk = { 0 };

   FUNC7(p_ctx, index_offset);

   chunk_id = FUNC2(p_ctx, "Chunk ID");
   chunk_size = FUNC4(p_ctx, "Chunk Size");

   entry_size = FUNC3(p_ctx, "wLongsPerEntry");
   index_sub_type = FUNC6(p_ctx, "bIndexSubType");
   index_type = FUNC6(p_ctx, "bIndexType");
   entry_count = FUNC4(p_ctx, "nEntriesInUse");
   chunk_id = FUNC2(p_ctx, "dwChunkId");
   base_offset = FUNC5(p_ctx, "qwBaseOffset");
   FUNC8(p_ctx, "dwReserved");

   if ((status = FUNC9(p_ctx)) != VC_CONTAINER_SUCCESS)
      return status;

   FUNC14(chunk_id, &data_type, &track_num);
   status = FUNC12(p_ctx, data_type, track_num);
   if (status || chunk_size < 24 || track_num != seek_track_num)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   if (entry_size != 2 || index_sub_type != 0 || index_type != AVI_INDEX_OF_CHUNKS)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   entry_count = FUNC1(entry_count, (chunk_size - 24) / (entry_size * 4));

   track_module = p_ctx->tracks[seek_track_num]->priv->module;

   for (entry = 0; entry < entry_count; ++entry)
   {
      uint32_t chunk_offset;
      int key_frame = 0;

      chunk_offset = FUNC4(p_ctx, "dwOffset");
      chunk_size = FUNC4(p_ctx, "dwSize");

      if ((status = FUNC9(p_ctx)) != VC_CONTAINER_SUCCESS)
         break;

      status = VC_CONTAINER_ERROR_NOT_FOUND;

      if (!(chunk_size & AVI_INDEX_DELTAFRAME))
         key_frame = 1;
      chunk_size &= ~AVI_INDEX_DELTAFRAME;

      position = base_offset + chunk_offset - 8;

      if (key_frame)
         track_module->chunk.flags = VC_CONTAINER_PACKET_FLAG_KEYFRAME;
      else
         track_module->chunk.flags = 0;

      if (time != NULL)
      {
         int res;
         status = VC_CONTAINER_ERROR_NOT_FOUND;
         res = FUNC13(track_module->chunk.time_pos, *time, key_frame, flags);

         if (res == 0)
         {
            *pos = position;
            *time = track_module->chunk.time_pos;
            status = VC_CONTAINER_SUCCESS;
            break;
         }
         else if (res > 0)
         {
            if (prev_keyframe_offs)
            {
               *pos = prev_keyframe_offs;
               track_module->chunk = prev_keyframe_chunk;
               *time = track_module->chunk.time_pos;
               status = VC_CONTAINER_SUCCESS;
            }
            break;
         }

         if (key_frame)
         {
            prev_keyframe_offs = position;
            prev_keyframe_chunk = track_module->chunk;
         }
      }
      else
      {
         /* Not seeking to a time position, but scanning
            track chunk state up to a certain file position
            instead */
         if (position >= *pos)
         {
            status = VC_CONTAINER_SUCCESS;
            break;
         }
      }

      track_module->chunk.index++;
      track_module->chunk.offs += chunk_size;
      track_module->chunk.time_pos = FUNC11(track_module);
   }

   return status;
}