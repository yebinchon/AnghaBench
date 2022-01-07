
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_QUEUE ;
 int* index_queue ;
 size_t queue_tail ;

void push_index( int index )
{
   index_queue[queue_tail] = index;
   queue_tail++;
   if( queue_tail >= MAX_QUEUE ) queue_tail = 0;
}
