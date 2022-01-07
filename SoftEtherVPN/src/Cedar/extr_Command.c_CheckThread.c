
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int ct1 ;
typedef int c ;
typedef int UINT ;
struct TYPE_9__ {int num; int a; int lock; int * wait_thread; } ;
typedef int THREAD ;
typedef TYPE_1__ EVENT ;
typedef TYPE_1__ CHECK_THREAD_3 ;
typedef TYPE_1__ CHECK_THREAD_1 ;


 int CHECK_THREAD_INCREMENT_COUNT ;
 int CheckThread1 ;
 int CheckThread2 ;
 int CheckThread3 ;
 int DeleteLock (int ) ;
 int Free (int **) ;
 int INFINITE ;
 TYPE_1__* NewEvent () ;
 int NewLock () ;
 int * NewThread (int ,TYPE_1__*) ;
 int Print (char*,int,...) ;
 int ReleaseEvent (TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int Set (TYPE_1__*) ;
 int WaitThread (int *,int ) ;
 int Zero (TYPE_1__*,int) ;
 int ** ZeroMalloc (int) ;

bool CheckThread()
{
 bool ok = 1;
 CHECK_THREAD_1 ct1;
 UINT num = 32;
 UINT i;
 THREAD **threads;
 EVENT *e;
 THREAD *t2;
 THREAD *t;
 CHECK_THREAD_3 c;

 e = NewEvent();

 Zero(&ct1, sizeof(ct1));
 ct1.lock = NewLock();

 t2 = NewThread(CheckThread2, e);
 ct1.wait_thread = t2;

 threads = ZeroMalloc(sizeof(THREAD *) * num);
 for (i = 0;i < num;i++)
 {
  threads[i] = NewThread(CheckThread1, &ct1);
  if (threads[i] == ((void*)0))
  {
   Print("Thread %u Create Failed.\n", i);
   ok = 0;
  }
 }

 Set(e);

 for (i = 0;i < num;i++)
 {
  WaitThread(threads[i], INFINITE);
  ReleaseThread(threads[i]);
 }

 Free(threads);

 if (ct1.num != (num * CHECK_THREAD_INCREMENT_COUNT))
 {
  Print("Threading: %u != %u\n", ct1.num, num * CHECK_THREAD_INCREMENT_COUNT);
  ok = 0;
 }

 DeleteLock(ct1.lock);

 WaitThread(t2, INFINITE);
 ReleaseThread(t2);

 ReleaseEvent(e);

 num = 32;

 Zero(&c, sizeof(c));
 c.num = num;
 t = NewThread(CheckThread3, &c);
 WaitThread(t, INFINITE);
 ReleaseThread(t);

 if (c.a != num)
 {
  Print("Threading: %u != %u\n", c.a, num);
  ok = 0;
 }

 return ok;
}
