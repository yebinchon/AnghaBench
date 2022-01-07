
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SHM ;
 int hashinit (int,int ,int *) ;
 int posix_sem_max ;
 int psemhash ;
 int psemhashtbl ;

void
psem_cache_init(void)
{
 psemhashtbl = hashinit(posix_sem_max / 2, M_SHM, &psemhash);
}
