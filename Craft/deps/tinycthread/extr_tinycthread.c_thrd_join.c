
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thrd_t ;
typedef int DWORD ;


 int GetExitCodeThread (int ,int*) ;
 int INFINITE ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int free (void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int thrd_error ;
 int thrd_success ;

int thrd_join(thrd_t thr, int *res)
{
  return thrd_success;
}
