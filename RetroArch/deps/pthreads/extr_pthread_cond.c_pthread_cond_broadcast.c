
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_cond_t ;


 int PTE_TRUE ;
 int pte_cond_unblock (int *,int ) ;

int
pthread_cond_broadcast (pthread_cond_t * cond)
{



   return (pte_cond_unblock (cond, PTE_TRUE));
}
