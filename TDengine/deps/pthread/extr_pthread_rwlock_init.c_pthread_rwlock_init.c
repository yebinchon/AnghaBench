
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * pthread_rwlockattr_t ;
typedef TYPE_1__* pthread_rwlock_t ;
struct TYPE_4__ {int mtxExclusiveAccess; int mtxSharedAccessCompleted; int nMagic; int cndSharedAccessCompleted; scalar_t__ nCompletedSharedAccessCount; scalar_t__ nExclusiveAccessCount; scalar_t__ nSharedAccessCount; } ;


 int EINVAL ;
 int ENOMEM ;
 int PTW32_RWLOCK_MAGIC ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;

int
pthread_rwlock_init (pthread_rwlock_t * rwlock,
       const pthread_rwlockattr_t * attr)
{
  int result;
  pthread_rwlock_t rwl = 0;

  if (rwlock == ((void*)0))
    {
      return EINVAL;
    }

  if (attr != ((void*)0) && *attr != ((void*)0))
    {
      result = EINVAL;
      goto DONE;
    }

  rwl = (pthread_rwlock_t) calloc (1, sizeof (*rwl));

  if (rwl == ((void*)0))
    {
      result = ENOMEM;
      goto DONE;
    }

  rwl->nSharedAccessCount = 0;
  rwl->nExclusiveAccessCount = 0;
  rwl->nCompletedSharedAccessCount = 0;

  result = pthread_mutex_init (&rwl->mtxExclusiveAccess, ((void*)0));
  if (result != 0)
    {
      goto FAIL0;
    }

  result = pthread_mutex_init (&rwl->mtxSharedAccessCompleted, ((void*)0));
  if (result != 0)
    {
      goto FAIL1;
    }

  result = pthread_cond_init (&rwl->cndSharedAccessCompleted, ((void*)0));
  if (result != 0)
    {
      goto FAIL2;
    }

  rwl->nMagic = PTW32_RWLOCK_MAGIC;

  result = 0;
  goto DONE;

FAIL2:
  (void) pthread_mutex_destroy (&(rwl->mtxSharedAccessCompleted));

FAIL1:
  (void) pthread_mutex_destroy (&(rwl->mtxExclusiveAccess));

FAIL0:
  (void) free (rwl);
  rwl = ((void*)0);

DONE:
  *rwlock = rwl;

  return result;
}
