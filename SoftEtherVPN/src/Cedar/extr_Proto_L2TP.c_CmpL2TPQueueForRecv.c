
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Ns; } ;
typedef TYPE_1__ L2TP_QUEUE ;


 scalar_t__ L2TP_SEQ_LT (scalar_t__,scalar_t__) ;

int CmpL2TPQueueForRecv(void *p1, void *p2)
{
 L2TP_QUEUE *q1, *q2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 q1 = *(L2TP_QUEUE **)p1;
 q2 = *(L2TP_QUEUE **)p2;
 if (q1 == ((void*)0) || q2 == ((void*)0))
 {
  return 0;
 }

 if (L2TP_SEQ_LT(q1->Ns, q2->Ns))
 {
  return -1;
 }
 else if (q1->Ns == q2->Ns)
 {
  return 0;
 }
 else
 {
  return 1;
 }
}
