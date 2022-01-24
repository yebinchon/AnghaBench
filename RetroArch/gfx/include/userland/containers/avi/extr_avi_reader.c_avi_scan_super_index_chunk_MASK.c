#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_20__ {TYPE_3__** tracks; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_SEEK_FLAGS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_19__ {TYPE_2__* priv; } ;
struct TYPE_18__ {TYPE_1__* module; } ;
struct TYPE_17__ {scalar_t__ index_offset; int index_size; } ;

/* Variables and functions */
 scalar_t__ AVI_INDEX_OF_CHUNKS ; 
 scalar_t__ AVI_INDEX_OF_INDEXES ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 unsigned int FUNC2 (TYPE_4__*,char*) ; 
 int FUNC3 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_NOT_FOUND ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC11 (TYPE_4__*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC12 (TYPE_4__*,scalar_t__,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC14(VC_CONTAINER_T *p_ctx, unsigned index_track_num,
   int64_t *time, VC_CONTAINER_SEEK_FLAGS_T flags, uint64_t *pos)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_NOT_FOUND;
   VC_CONTAINER_FOURCC_T chunk_id;
   uint64_t index_offset;
   uint32_t index_size;
   uint16_t data_type, track_num;
   uint32_t entry, entry_count;
   uint16_t entry_size;
   uint8_t index_sub_type, index_type;

   index_offset = p_ctx->tracks[index_track_num]->priv->module->index_offset;
   index_size = p_ctx->tracks[index_track_num]->priv->module->index_size;

   FUNC6(p_ctx, index_offset);

   entry_size = FUNC2(p_ctx, "wLongsPerEntry");
   index_sub_type = FUNC5(p_ctx, "bIndexSubType");
   index_type = FUNC5(p_ctx, "bIndexType");
   entry_count = FUNC3(p_ctx, "nEntriesInUse");
   chunk_id = FUNC1(p_ctx, "dwChunkId");
   FUNC7(p_ctx, "dwReserved0");
   FUNC7(p_ctx, "dwReserved1");
   FUNC7(p_ctx, "dwReserved2");

   if ((status = FUNC9(p_ctx)) != VC_CONTAINER_SUCCESS)
      return status;

   if (index_type == AVI_INDEX_OF_INDEXES)
   {
      FUNC13(chunk_id, &data_type, &track_num);
      status = FUNC11(p_ctx, data_type, track_num);
      if (status || index_size < 24 || track_num != index_track_num) return VC_CONTAINER_ERROR_FORMAT_INVALID;

      /* FIXME: We should probably support AVI_INDEX_2FIELD as well */
      if (entry_size != 4 || index_sub_type != 0)
         return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

      entry_count = FUNC0(entry_count, (index_size - 24) / entry_size);

      for (entry = 0; entry < entry_count; ++entry)
      {
         uint64_t entry_offset, standard_index_offset;
         standard_index_offset = FUNC4(p_ctx, "qwOffset");
         FUNC7(p_ctx, "dwSize");
         FUNC7(p_ctx, "dwDuration");

         if ((status = FUNC9(p_ctx)) != VC_CONTAINER_SUCCESS)
            break;

         if (standard_index_offset == FUNC10(0))
         {
            status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED; /* Not plausible */
            break;
         }

         entry_offset = FUNC8(p_ctx);
         status = FUNC12(p_ctx, standard_index_offset, index_track_num, time, flags, pos);
         if (status != VC_CONTAINER_ERROR_NOT_FOUND) break;
         FUNC6(p_ctx, entry_offset); /* Move to next entry ('ix' chunk); */
      }
   }
   else if (index_type == AVI_INDEX_OF_CHUNKS)
   {
      /* It seems we are dealing with a standard index instead... */
      status = FUNC12(p_ctx, index_offset, index_track_num, time, flags, pos);
   }
   else
   {
      status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   return status;
}