
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int class_queue_t ;


 int FALSE ;
 void* _getq_flow_or_scidx (int *,int ,int ) ;

void *
_getq_scidx_lt(class_queue_t *q, u_int32_t scidx)
{
 return (_getq_flow_or_scidx(q, scidx, FALSE));
}
