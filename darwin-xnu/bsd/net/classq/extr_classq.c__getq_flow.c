
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int class_queue_t ;


 int TRUE ;
 void* _getq_flow_or_scidx (int *,int ,int ) ;

void *
_getq_flow(class_queue_t *q, u_int32_t flow)
{
 return (_getq_flow_or_scidx(q, flow, TRUE));
}
