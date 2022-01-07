
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thrd_t ;
typedef int thrd_start_t ;
struct TYPE_3__ {void* mArg; int mFunction; } ;
typedef TYPE_1__ _thread_start_info ;
typedef scalar_t__ HANDLE ;


 scalar_t__ _beginthreadex (int *,int ,int ,void*,int ,int *) ;
 int _thrd_wrapper_function ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ pthread_create (scalar_t__*,int *,int ,void*) ;
 int thrd_error ;
 int thrd_nomem ;
 int thrd_success ;

int thrd_create(thrd_t *thr, thrd_start_t func, void *arg)
{


  _thread_start_info* ti = (_thread_start_info*)malloc(sizeof(_thread_start_info));
  if (ti == ((void*)0))
  {
    return thrd_nomem;
  }
  ti->mFunction = func;
  ti->mArg = arg;
  if(!*thr)
  {
    free(ti);
    return thrd_error;
  }

  return thrd_success;
}
