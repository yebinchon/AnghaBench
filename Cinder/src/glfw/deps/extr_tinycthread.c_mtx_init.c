
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_4__ {int mRecursive; int mHandle; int mAlreadyLocked; } ;
typedef TYPE_1__ mtx_t ;


 int FALSE ;
 int InitializeCriticalSection (int *) ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int mtx_recursive ;
 int pthread_mutex_init (TYPE_1__*,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;
 int thrd_error ;
 int thrd_success ;

int mtx_init(mtx_t *mtx, int type)
{






  int ret;
  pthread_mutexattr_t attr;
  pthread_mutexattr_init(&attr);
  if (type & mtx_recursive)
  {
    pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);
  }
  ret = pthread_mutex_init(mtx, &attr);
  pthread_mutexattr_destroy(&attr);
  return ret == 0 ? thrd_success : thrd_error;

}
