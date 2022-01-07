
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_MSGQUEUE_T ;


 int vcos_msgq_delete_internal (int *) ;

void vcos_msgq_delete(VCOS_MSGQUEUE_T *q)
{
   vcos_msgq_delete_internal(q);
}
