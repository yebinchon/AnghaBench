
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int class_queue_t ;


 int _flushq_flow (int *,int ,int *,int *) ;

void
_flushq(class_queue_t *q)
{
 (void) _flushq_flow(q, 0, ((void*)0), ((void*)0));
}
