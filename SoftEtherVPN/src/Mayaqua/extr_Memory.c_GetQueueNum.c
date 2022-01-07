
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int num_item; } ;
typedef TYPE_1__ QUEUE ;



UINT GetQueueNum(QUEUE *q)
{

 if (q == ((void*)0))
 {
  return 0;
 }

 return q->num_item;
}
