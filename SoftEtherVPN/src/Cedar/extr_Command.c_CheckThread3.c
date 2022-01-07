
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; int a; } ;
typedef int THREAD ;
typedef TYPE_1__ CHECK_THREAD_3 ;


 int INFINITE ;
 int * NewThread (void (*) (int *,void*),TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int WaitThread (int *,int ) ;

void CheckThread3(THREAD *thread, void *param)
{
 CHECK_THREAD_3 *c = (CHECK_THREAD_3 *)param;
 THREAD *t;

 if (c->num == 0)
 {
  return;
 }
 c->num--;
 c->a++;

 t = NewThread(CheckThread3, c);
 WaitThread(t, INFINITE);
 ReleaseThread(t);
}
