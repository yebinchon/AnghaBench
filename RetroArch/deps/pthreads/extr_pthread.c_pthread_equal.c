
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_2__ {scalar_t__ x; } ;
typedef TYPE_1__ pte_thread_t ;



int pthread_equal (pthread_t t1, pthread_t t2)
{




   int result = ( t1 == t2 && ((pte_thread_t*)t1)->x == ((pte_thread_t*)t2)->x );

   return (result);
}
