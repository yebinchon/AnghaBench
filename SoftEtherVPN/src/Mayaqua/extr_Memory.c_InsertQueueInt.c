
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int QUEUE ;


 int * Clone (int *,int) ;
 int InsertQueue (int *,int *) ;

void InsertQueueInt(QUEUE *q, UINT value)
{
 UINT *p;

 if (q == ((void*)0))
 {
  return;
 }

 p = Clone(&value, sizeof(UINT));

 InsertQueue(q, p);
}
