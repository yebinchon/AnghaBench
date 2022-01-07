
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vidsoft_num_priority_threads ;

void VIDSoftSetNumPriorityThreads(int num)
{
   vidsoft_num_priority_threads = num > 5 ? 5 : num;

   if (num == 2)
      vidsoft_num_priority_threads = 1;

   if (num == 4)
      vidsoft_num_priority_threads = 3;
}
