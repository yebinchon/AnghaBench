
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int class_queue_t ;



 int VERIFY (int ) ;
 int _removeq_mbuf (int *,void*) ;
 int qptype (int *) ;

void
_removeq(class_queue_t *q, void *pkt)
{
 switch (qptype(q)) {
 case 128:
  _removeq_mbuf(q, pkt);
  break;

 default:
  VERIFY(0);

 }
}
