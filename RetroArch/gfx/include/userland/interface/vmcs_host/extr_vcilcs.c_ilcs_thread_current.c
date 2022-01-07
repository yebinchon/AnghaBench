
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thread; } ;
typedef TYPE_1__ ILCS_SERVICE_T ;


 int * vcos_thread_current () ;

int ilcs_thread_current(void *param)
{
   ILCS_SERVICE_T *st = (ILCS_SERVICE_T *) param;
   return vcos_thread_current() == &st->thread;
}
