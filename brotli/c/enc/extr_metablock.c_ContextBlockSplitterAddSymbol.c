
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t curr_histogram_ix_; scalar_t__ block_size_; scalar_t__ target_block_size_; int * histograms_; } ;
typedef int MemoryManager ;
typedef TYPE_1__ ContextBlockSplitter ;


 int BROTLI_FALSE ;
 scalar_t__ BROTLI_IS_OOM (int *) ;
 int ContextBlockSplitterFinishBlock (TYPE_1__*,int *,int ) ;
 int HistogramAddLiteral (int *,size_t) ;

__attribute__((used)) static void ContextBlockSplitterAddSymbol(
    ContextBlockSplitter* self, MemoryManager* m,
    size_t symbol, size_t context) {
  HistogramAddLiteral(&self->histograms_[self->curr_histogram_ix_ + context],
      symbol);
  ++self->block_size_;
  if (self->block_size_ == self->target_block_size_) {
    ContextBlockSplitterFinishBlock(self, m, BROTLI_FALSE);
    if (BROTLI_IS_OOM(m)) return;
  }
}
