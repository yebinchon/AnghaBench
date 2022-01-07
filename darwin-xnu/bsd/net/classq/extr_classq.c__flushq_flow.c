
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int class_queue_t ;



 int VERIFY (int ) ;
 int _flushq_flow_mbuf (int *,int ,int *,int *) ;
 int qptype (int *) ;

void
_flushq_flow(class_queue_t *q, u_int32_t flow, u_int32_t *cnt, u_int32_t *len)
{
 switch (qptype(q)) {
 case 128:
  _flushq_flow_mbuf(q, flow, cnt, len);
  break;

 default:
  VERIFY(0);

 }
}
