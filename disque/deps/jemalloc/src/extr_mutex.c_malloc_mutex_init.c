
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_4__ {scalar_t__ lock; struct TYPE_4__* postponed_next; } ;
typedef TYPE_1__ malloc_mutex_t ;


 int InitializeCriticalSectionAndSpinCount (scalar_t__*,int ) ;
 int InitializeSRWLock (scalar_t__*) ;
 int MALLOC_MUTEX_TYPE ;
 int _CRT_SPINCOUNT ;
 scalar_t__ _pthread_mutex_init_calloc_cb (scalar_t__*,int ) ;
 int bootstrap_calloc ;
 scalar_t__ postpone_init ;
 TYPE_1__* postponed_mutexes ;
 scalar_t__ pthread_mutex_init (scalar_t__*,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

bool
malloc_mutex_init(malloc_mutex_t *mutex)
{
 pthread_mutexattr_t attr;

 if (pthread_mutexattr_init(&attr) != 0)
  return (1);
 pthread_mutexattr_settype(&attr, MALLOC_MUTEX_TYPE);
 if (pthread_mutex_init(&mutex->lock, &attr) != 0) {
  pthread_mutexattr_destroy(&attr);
  return (1);
 }
 pthread_mutexattr_destroy(&attr);

 return (0);
}
