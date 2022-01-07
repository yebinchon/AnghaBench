
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int brotli_free_func ;
typedef scalar_t__ brotli_alloc_func ;
struct TYPE_8__ {int * htrees; int * codes; } ;
struct TYPE_7__ {int * htrees; int * codes; } ;
struct TYPE_6__ {int * htrees; int * codes; } ;
struct TYPE_9__ {int canny_ringbuffer_allocation; int* dist_rb; int mtf_upper_bound; int transforms; int dictionary; int * block_len_trees; int * block_type_trees; scalar_t__ dist_rb_idx; scalar_t__ max_distance; scalar_t__ window_bits; scalar_t__ should_wrap_ringbuffer; scalar_t__ is_metadata; scalar_t__ is_uncompressed; scalar_t__ is_last_metablock; TYPE_3__ distance_hgroup; TYPE_2__ insert_copy_hgroup; TYPE_1__ literal_hgroup; int * dist_context_map_slice; int * context_map_slice; int * dist_context_map; int * context_modes; int * context_map; scalar_t__ ringbuffer_mask; scalar_t__ new_ringbuffer_size; scalar_t__ ringbuffer_size; int * ringbuffer; scalar_t__ partial_pos_out; scalar_t__ rb_roundtrips; scalar_t__ pos; scalar_t__ loop_counter; scalar_t__ buffer_length; int substate_read_block_length; int substate_decode_uint8; int substate_uncompressed; int substate_metablock_header; scalar_t__ large_window; int state; int br; scalar_t__ error_code; void* memory_manager_opaque; int free_func; scalar_t__ alloc_func; } ;
typedef TYPE_4__ BrotliDecoderState ;
typedef int BROTLI_BOOL ;


 int BROTLI_STATE_DECODE_UINT8_NONE ;
 int BROTLI_STATE_METABLOCK_HEADER_NONE ;
 int BROTLI_STATE_READ_BLOCK_LENGTH_NONE ;
 int BROTLI_STATE_UNCOMPRESSED_NONE ;
 int BROTLI_STATE_UNINITED ;
 int BROTLI_TRUE ;
 scalar_t__ BrotliDefaultAllocFunc ;
 int BrotliDefaultFreeFunc ;
 int BrotliGetDictionary () ;
 int BrotliGetTransforms () ;
 int BrotliInitBitReader (int *) ;

BROTLI_BOOL BrotliDecoderStateInit(BrotliDecoderState* s,
    brotli_alloc_func alloc_func, brotli_free_func free_func, void* opaque) {
  if (!alloc_func) {
    s->alloc_func = BrotliDefaultAllocFunc;
    s->free_func = BrotliDefaultFreeFunc;
    s->memory_manager_opaque = 0;
  } else {
    s->alloc_func = alloc_func;
    s->free_func = free_func;
    s->memory_manager_opaque = opaque;
  }

  s->error_code = 0;

  BrotliInitBitReader(&s->br);
  s->state = BROTLI_STATE_UNINITED;
  s->large_window = 0;
  s->substate_metablock_header = BROTLI_STATE_METABLOCK_HEADER_NONE;
  s->substate_uncompressed = BROTLI_STATE_UNCOMPRESSED_NONE;
  s->substate_decode_uint8 = BROTLI_STATE_DECODE_UINT8_NONE;
  s->substate_read_block_length = BROTLI_STATE_READ_BLOCK_LENGTH_NONE;

  s->buffer_length = 0;
  s->loop_counter = 0;
  s->pos = 0;
  s->rb_roundtrips = 0;
  s->partial_pos_out = 0;

  s->block_type_trees = ((void*)0);
  s->block_len_trees = ((void*)0);
  s->ringbuffer = ((void*)0);
  s->ringbuffer_size = 0;
  s->new_ringbuffer_size = 0;
  s->ringbuffer_mask = 0;

  s->context_map = ((void*)0);
  s->context_modes = ((void*)0);
  s->dist_context_map = ((void*)0);
  s->context_map_slice = ((void*)0);
  s->dist_context_map_slice = ((void*)0);

  s->literal_hgroup.codes = ((void*)0);
  s->literal_hgroup.htrees = ((void*)0);
  s->insert_copy_hgroup.codes = ((void*)0);
  s->insert_copy_hgroup.htrees = ((void*)0);
  s->distance_hgroup.codes = ((void*)0);
  s->distance_hgroup.htrees = ((void*)0);

  s->is_last_metablock = 0;
  s->is_uncompressed = 0;
  s->is_metadata = 0;
  s->should_wrap_ringbuffer = 0;
  s->canny_ringbuffer_allocation = 1;

  s->window_bits = 0;
  s->max_distance = 0;
  s->dist_rb[0] = 16;
  s->dist_rb[1] = 15;
  s->dist_rb[2] = 11;
  s->dist_rb[3] = 4;
  s->dist_rb_idx = 0;
  s->block_type_trees = ((void*)0);
  s->block_len_trees = ((void*)0);

  s->mtf_upper_bound = 63;

  s->dictionary = BrotliGetDictionary();
  s->transforms = BrotliGetTransforms();

  return BROTLI_TRUE;
}
