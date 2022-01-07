
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length_; size_t idx_; TYPE_1__* split_; int type_; } ;
struct TYPE_4__ {scalar_t__* lengths; int * types; } ;
typedef TYPE_2__ BlockSplitIterator ;



__attribute__((used)) static void BlockSplitIteratorNext(BlockSplitIterator* self) {
  if (self->length_ == 0) {
    ++self->idx_;
    self->type_ = self->split_->types[self->idx_];
    self->length_ = self->split_->lengths[self->idx_];
  }
  --self->length_;
}
