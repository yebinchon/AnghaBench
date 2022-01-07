
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_QUEUE ;
 int* index_queue ;
 size_t queue_head ;

int pop_index()
{
   int val = index_queue[queue_head];
   queue_head++;
   if( queue_head >= MAX_QUEUE ) queue_head = 0;
   return val;
}
