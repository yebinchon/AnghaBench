
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
typedef int int64_t ;
typedef int AVFifoBuffer ;


 int AV_NOPTS_VALUE ;
 int av_fifo_generic_read (int *,int *,int,int *) ;
 scalar_t__ av_fifo_size (int *) ;

__attribute__((used)) static inline int64_t timestamp_queue_dequeue(AVFifoBuffer* queue)
{
    int64_t timestamp = AV_NOPTS_VALUE;
    if (av_fifo_size(queue) > 0)
        av_fifo_generic_read(queue, &timestamp, sizeof(timestamp), ((void*)0));

    return timestamp;
}
