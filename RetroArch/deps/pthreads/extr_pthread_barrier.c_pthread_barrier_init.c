
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* pthread_barrierattr_t ;
typedef TYPE_2__* pthread_barrier_t ;
struct TYPE_7__ {unsigned int nCurrentBarrierHeight; unsigned int nInitialBarrierHeight; int * semBarrierBreeched; int pshared; scalar_t__ iStep; } ;
struct TYPE_6__ {int pshared; } ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_PROCESS_PRIVATE ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_2__*) ;
 int sem_destroy (int *) ;
 scalar_t__ sem_init (int *,int ,int ) ;

int pthread_barrier_init (pthread_barrier_t * barrier,
      const pthread_barrierattr_t * attr, unsigned int count)
{
   pthread_barrier_t b;

   if (barrier == ((void*)0) || count == 0)
      return EINVAL;

   if (((void*)0) != (b = (pthread_barrier_t) calloc (1, sizeof (*b))))
   {
      b->pshared = (attr != ((void*)0) && *attr != ((void*)0)
            ? (*attr)->pshared : PTHREAD_PROCESS_PRIVATE);

      b->nCurrentBarrierHeight = b->nInitialBarrierHeight = count;
      b->iStep = 0;
      if (0 == sem_init (&(b->semBarrierBreeched[0]), b->pshared, 0))
      {
         if (0 == sem_init (&(b->semBarrierBreeched[1]), b->pshared, 0))
         {
            *barrier = b;
            return 0;
         }
         (void) sem_destroy (&(b->semBarrierBreeched[0]));
      }
      (void) free (b);
   }

   return ENOMEM;
}
