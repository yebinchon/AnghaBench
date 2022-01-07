
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {TYPE_1__* sample_table; void* sample_size; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {scalar_t__ status; int chunks; TYPE_2__* sample_table; void* next_sync_sample; void* samples_per_chunk; void* samples_in_chunk; void* offset; void* sample_composition_count; void* sample_composition_offset; void* sample_duration_count; void* sample_duration; void* sample_size; } ;
struct TYPE_10__ {scalar_t__ entry; } ;
struct TYPE_9__ {scalar_t__ entries; } ;
typedef int MP4_SAMPLE_TABLE_T ;
typedef TYPE_4__ MP4_READER_STATE_T ;
 void* STREAM_STATUS (int *) ;
 void* VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 void* _READ_U32 (int *) ;
 void* _READ_U64 (int *) ;
 int _SKIP_U32 (int *) ;
 scalar_t__ mp4_seek_sample_table (int *,TYPE_3__*,TYPE_4__*,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_sample_table( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_MODULE_T *track_module, MP4_READER_STATE_T *state,
   MP4_SAMPLE_TABLE_T table, unsigned int seek)
{
   uint32_t value;

   if(table == 129 && track_module->sample_size)
   {
      state->sample_size = track_module->sample_size;
      return state->status;
   }


   if(table == 132 &&
      track_module->sample_table[134].entries)
      table = 134;


   if(seek)
   {
      state->status = mp4_seek_sample_table( p_ctx, track_module, state, table );
      if(state->status != VC_CONTAINER_SUCCESS) return state->status;
   }

   switch(table)
   {
   case 129:
      state->sample_size = _READ_U32(p_ctx);
      state->status = STREAM_STATUS(p_ctx);
      break;

   case 128:
      state->sample_duration_count = _READ_U32(p_ctx);
      state->sample_duration = _READ_U32(p_ctx);
      state->status = STREAM_STATUS(p_ctx);
      if(state->status != VC_CONTAINER_SUCCESS) break;
      if(!state->sample_duration_count) state->status = VC_CONTAINER_ERROR_CORRUPTED;
      break;

   case 133:
      state->sample_composition_count = _READ_U32(p_ctx);
      state->sample_composition_offset = _READ_U32(p_ctx);
      state->status = STREAM_STATUS(p_ctx);
      if(state->status != VC_CONTAINER_SUCCESS) break;
      if(!state->sample_composition_count) state->status = VC_CONTAINER_ERROR_CORRUPTED;
      break;

   case 131:
      state->chunks = _READ_U32(p_ctx);
      state->samples_per_chunk = _READ_U32(p_ctx);
      _SKIP_U32(p_ctx);
      state->status = STREAM_STATUS(p_ctx);
      if(state->status != VC_CONTAINER_SUCCESS) break;

      if(state->sample_table[table].entry + 1 <
         track_module->sample_table[131].entries) value = _READ_U32(p_ctx);
      else value = -1;

      if(!state->chunks || !state->samples_per_chunk || state->chunks >= value )
      {state->status = VC_CONTAINER_ERROR_CORRUPTED; break;}
      state->chunks = value - state->chunks;
      state->samples_in_chunk = state->samples_per_chunk;
      break;

   case 132:
   case 134:
      state->offset = table == 132 ? _READ_U32(p_ctx) : _READ_U64(p_ctx);
      state->status = STREAM_STATUS(p_ctx);
      if(state->status != VC_CONTAINER_SUCCESS) break;
      if(!state->offset) state->status = VC_CONTAINER_ERROR_CORRUPTED;
      state->samples_in_chunk = state->samples_per_chunk;
      break;

   case 130:
      state->next_sync_sample = _READ_U32(p_ctx);
      state->status = STREAM_STATUS(p_ctx);
      break;

   default: break;
   }

   state->sample_table[table].entry++;
   return state->status;
}
