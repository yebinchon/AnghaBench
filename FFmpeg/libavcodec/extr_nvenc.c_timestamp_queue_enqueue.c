
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
typedef int int64_t ;
typedef int AVFifoBuffer ;


 int av_fifo_generic_write (int *,int *,int,int *) ;

__attribute__((used)) static inline void timestamp_queue_enqueue(AVFifoBuffer* queue, int64_t timestamp)
{
    av_fifo_generic_write(queue, &timestamp, sizeof(timestamp), ((void*)0));
}
