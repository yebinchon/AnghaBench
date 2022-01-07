
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int M_PROC ;
 int allproc ;
 void* hashinit (int,int ,int *) ;
 int maxproc ;
 int personas_bootstrap () ;
 int pgrphash ;
 void* pgrphashtbl ;
 int pidhash ;
 void* pidhashtbl ;
 int sesshash ;
 void* sesshashtbl ;
 int uihash ;
 void* uihashtbl ;
 int zombproc ;

void
procinit(void)
{
 LIST_INIT(&allproc);
 LIST_INIT(&zombproc);
 pidhashtbl = hashinit(maxproc / 4, M_PROC, &pidhash);
 pgrphashtbl = hashinit(maxproc / 4, M_PROC, &pgrphash);
 sesshashtbl = hashinit(maxproc / 4, M_PROC, &sesshash);
 uihashtbl = hashinit(maxproc / 16, M_PROC, &uihash);



}
