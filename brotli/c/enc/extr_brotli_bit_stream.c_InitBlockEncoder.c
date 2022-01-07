
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int type_code_calculator; } ;
struct TYPE_5__ {size_t histogram_length_; size_t num_block_types_; size_t num_blocks_; scalar_t__ bits_; scalar_t__ depths_; scalar_t__ entropy_ix_; int block_len_; scalar_t__ block_ix_; TYPE_1__ block_split_code_; int const* block_lengths_; int const* block_types_; } ;
typedef TYPE_2__ BlockEncoder ;


 int InitBlockTypeCodeCalculator (int *) ;

__attribute__((used)) static void InitBlockEncoder(BlockEncoder* self, size_t histogram_length,
    size_t num_block_types, const uint8_t* block_types,
    const uint32_t* block_lengths, const size_t num_blocks) {
  self->histogram_length_ = histogram_length;
  self->num_block_types_ = num_block_types;
  self->block_types_ = block_types;
  self->block_lengths_ = block_lengths;
  self->num_blocks_ = num_blocks;
  InitBlockTypeCodeCalculator(&self->block_split_code_.type_code_calculator);
  self->block_ix_ = 0;
  self->block_len_ = num_blocks == 0 ? 0 : block_lengths[0];
  self->entropy_ix_ = 0;
  self->depths_ = 0;
  self->bits_ = 0;
}
