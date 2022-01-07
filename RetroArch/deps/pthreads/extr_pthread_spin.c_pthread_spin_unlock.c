
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* pthread_spinlock_t ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_1__ u; int interlock; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ PTE_ATOMIC_COMPARE_EXCHANGE (int *,int,int) ;



 TYPE_2__* PTHREAD_SPINLOCK_INITIALIZER ;
 int pthread_mutex_unlock (int *) ;

int pthread_spin_unlock (pthread_spinlock_t * lock)
{
   register pthread_spinlock_t s;

   if (((void*)0) == lock || ((void*)0) == *lock)
      return (EINVAL);

   s = *lock;

   if (s == PTHREAD_SPINLOCK_INITIALIZER)
      return EPERM;

   switch ((long)
         PTE_ATOMIC_COMPARE_EXCHANGE (&(s->interlock),
            129,
            130))
   {
      case 130:
         return 0;
      case 129:
         return EPERM;
      case 128:
         return pthread_mutex_unlock (&(s->u.mutex));
   }

   return EINVAL;
}
