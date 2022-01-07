
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;
typedef int VCOS_MSGQUEUE_T ;


 int vcos_msgq_create_internal (int *,char const*) ;

VCOS_STATUS_T vcos_msgq_create(VCOS_MSGQUEUE_T *q, const char *name)
{
   VCOS_STATUS_T st;

   st = vcos_msgq_create_internal(q, name);

   return st;
}
