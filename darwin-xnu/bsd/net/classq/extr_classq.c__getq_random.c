
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int class_queue_t ;



 int VERIFY (int ) ;
 void* _getq_random_mbuf (int *) ;
 int qptype (int *) ;

void *
_getq_random(class_queue_t *q)
{
 void *r = ((void*)0);

 switch (qptype(q)) {
 case 128:
  r = _getq_random_mbuf(q);
  break;

 default:
  VERIFY(0);

 }

 return (r);
}
