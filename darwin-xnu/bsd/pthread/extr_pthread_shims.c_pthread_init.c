
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pthread_init ) () ;} ;


 int panic (char*) ;
 TYPE_1__* pthread_functions ;
 int stub1 () ;

void
pthread_init(void)
{
 if (!pthread_functions) {
  panic("pthread kernel extension not loaded (function table is NULL).");
 }
 pthread_functions->pthread_init();
}
