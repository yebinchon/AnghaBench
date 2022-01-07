
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlockattr_t ;
struct TYPE_3__ {int pshared; } ;


 int ENOMEM ;
 int PTHREAD_PROCESS_PRIVATE ;
 scalar_t__ calloc (int,int) ;

int
pthread_rwlockattr_init (pthread_rwlockattr_t * attr)
{
  int result = 0;
  pthread_rwlockattr_t rwa;

  rwa = (pthread_rwlockattr_t) calloc (1, sizeof (*rwa));

  if (rwa == ((void*)0))
    {
      result = ENOMEM;
    }
  else
    {
      rwa->pshared = PTHREAD_PROCESS_PRIVATE;
    }

  *attr = rwa;

  return (result);
}
