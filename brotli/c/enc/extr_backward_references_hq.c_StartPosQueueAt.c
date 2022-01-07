
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t idx_; int const* q_; } ;
typedef TYPE_1__ StartPosQueue ;
typedef int PosData ;



__attribute__((used)) static const PosData* StartPosQueueAt(const StartPosQueue* self, size_t k) {
  return &self->q_[(k - self->idx_) & 7];
}
