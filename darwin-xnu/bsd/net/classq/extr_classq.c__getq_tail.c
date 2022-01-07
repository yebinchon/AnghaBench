
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int class_queue_t ;



 int VERIFY (int ) ;
 void* _getq_tail_mbuf (int *) ;
 int qptype (int *) ;

void *
_getq_tail(class_queue_t *q)
{
 void *t = ((void*)0);

 switch (qptype(q)) {
 case 128:
  t = _getq_tail_mbuf(q);
  break;

 default:
  VERIFY(0);

 }

 return (t);
}
