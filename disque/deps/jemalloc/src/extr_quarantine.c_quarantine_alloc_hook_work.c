
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int quarantine_t ;


 int LG_MAXOBJS_INIT ;
 int idalloctm (int *,int *,int ,int) ;
 int * quarantine_init (int *,int ) ;
 int tcache_get (int *,int) ;
 int tsd_nominal (int *) ;
 int * tsd_quarantine_get (int *) ;
 int tsd_quarantine_set (int *,int *) ;

void
quarantine_alloc_hook_work(tsd_t *tsd)
{
 quarantine_t *quarantine;

 if (!tsd_nominal(tsd))
  return;

 quarantine = quarantine_init(tsd, LG_MAXOBJS_INIT);




 if (tsd_quarantine_get(tsd) == ((void*)0))
  tsd_quarantine_set(tsd, quarantine);
 else
  idalloctm(tsd, quarantine, tcache_get(tsd, 0), 1);
}
