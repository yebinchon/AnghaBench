
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFifoBuffer ;


 unsigned int av_fifo_size (int const*) ;
 unsigned int qsv_fifo_item_size () ;

__attribute__((used)) static inline unsigned int qsv_fifo_size(const AVFifoBuffer* fifo)
{
    return av_fifo_size(fifo)/qsv_fifo_item_size();
}
