
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SHM ;
 int desiredvnodes ;
 int hashinit (int,int ,int *) ;
 int pshmhash ;
 int pshmhashtbl ;

void
pshm_cache_init(void)
{
 pshmhashtbl = hashinit(desiredvnodes / 8, M_SHM, &pshmhash);
}
