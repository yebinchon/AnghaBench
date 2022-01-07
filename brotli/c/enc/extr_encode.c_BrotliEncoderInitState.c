
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* dist_cache_; int saved_dist_cache_; scalar_t__ cmd_alloc_size_; scalar_t__ commands_; int ringbuffer_; void* is_initialized_; void* is_last_block_emitted_; int stream_state_; scalar_t__ total_out_; scalar_t__ available_out_; int * next_out_; int * literal_buf_; int * command_buf_; scalar_t__ cmd_code_numbits_; scalar_t__ large_table_size_; int * large_table_; int hasher_; scalar_t__ storage_; scalar_t__ storage_size_; scalar_t__ prev_byte2_; scalar_t__ prev_byte_; scalar_t__ last_processed_pos_; scalar_t__ last_flush_pos_; scalar_t__ last_insert_len_; scalar_t__ num_literals_; scalar_t__ num_commands_; scalar_t__ input_pos_; int params; } ;
typedef TYPE_1__ BrotliEncoderState ;


 void* BROTLI_FALSE ;
 int BROTLI_STREAM_PROCESSING ;
 int BrotliEncoderInitParams (int *) ;
 int HasherInit (int *) ;
 int RingBufferInit (int *) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void BrotliEncoderInitState(BrotliEncoderState* s) {
  BrotliEncoderInitParams(&s->params);
  s->input_pos_ = 0;
  s->num_commands_ = 0;
  s->num_literals_ = 0;
  s->last_insert_len_ = 0;
  s->last_flush_pos_ = 0;
  s->last_processed_pos_ = 0;
  s->prev_byte_ = 0;
  s->prev_byte2_ = 0;
  s->storage_size_ = 0;
  s->storage_ = 0;
  HasherInit(&s->hasher_);
  s->large_table_ = ((void*)0);
  s->large_table_size_ = 0;
  s->cmd_code_numbits_ = 0;
  s->command_buf_ = ((void*)0);
  s->literal_buf_ = ((void*)0);
  s->next_out_ = ((void*)0);
  s->available_out_ = 0;
  s->total_out_ = 0;
  s->stream_state_ = BROTLI_STREAM_PROCESSING;
  s->is_last_block_emitted_ = BROTLI_FALSE;
  s->is_initialized_ = BROTLI_FALSE;

  RingBufferInit(&s->ringbuffer_);

  s->commands_ = 0;
  s->cmd_alloc_size_ = 0;


  s->dist_cache_[0] = 4;
  s->dist_cache_[1] = 11;
  s->dist_cache_[2] = 15;
  s->dist_cache_[3] = 16;


  memcpy(s->saved_dist_cache_, s->dist_cache_, sizeof(s->saved_dist_cache_));
}
