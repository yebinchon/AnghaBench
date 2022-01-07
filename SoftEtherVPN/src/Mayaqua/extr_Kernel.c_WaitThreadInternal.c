
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD ;


 int OSWaitThread (int *) ;

bool WaitThreadInternal(THREAD *t)
{

 if (t == ((void*)0))
 {
  return 0;
 }

 return OSWaitThread(t);
}
