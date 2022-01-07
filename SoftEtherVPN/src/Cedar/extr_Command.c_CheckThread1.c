
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int lock; scalar_t__ num; int wait_thread; } ;
typedef int THREAD ;
typedef TYPE_1__ CHECK_THREAD_1 ;


 scalar_t__ CHECK_THREAD_INCREMENT_COUNT ;
 int INFINITE ;
 int InputToNull (void*) ;
 int Lock (int ) ;
 scalar_t__ RetZero () ;
 int Unlock (int ) ;
 int WaitThread (int ,int ) ;
 scalar_t__ check_thread_global_1 ;

void CheckThread1(THREAD *thread, void *param)
{
 CHECK_THREAD_1 *ct1 = (CHECK_THREAD_1 *)param;
 UINT i;
 UINT num = CHECK_THREAD_INCREMENT_COUNT;

 WaitThread(ct1->wait_thread, INFINITE);

 for (i = 0;i < num;i++)
 {
  Lock(ct1->lock);
  check_thread_global_1 = ct1->num;
  InputToNull((void *)check_thread_global_1);
  check_thread_global_1 = check_thread_global_1 + 1 + RetZero();
  ct1->num = check_thread_global_1;
  Unlock(ct1->lock);
 }
}
