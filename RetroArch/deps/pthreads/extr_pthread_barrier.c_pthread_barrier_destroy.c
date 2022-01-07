
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_barrier_t ;
struct TYPE_4__ {int pshared; int * semBarrierBreeched; } ;


 int EINVAL ;
 scalar_t__ PTE_OBJECT_INVALID ;
 int free (TYPE_1__*) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;

int pthread_barrier_destroy (pthread_barrier_t * barrier)
{
   int result = 0;
   pthread_barrier_t b;

   if (barrier == ((void*)0) || *barrier == (pthread_barrier_t) PTE_OBJECT_INVALID)
      return EINVAL;

   b = *barrier;
   *barrier = ((void*)0);

   if (0 == (result = sem_destroy (&(b->semBarrierBreeched[0]))))
   {
      if (0 == (result = sem_destroy (&(b->semBarrierBreeched[1]))))
      {
         (void) free (b);
         return 0;
      }
      (void) sem_init (&(b->semBarrierBreeched[0]), b->pshared, 0);
   }

   *barrier = b;
   return (result);
}
