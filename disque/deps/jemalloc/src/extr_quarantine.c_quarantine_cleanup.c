
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int quarantine_t ;


 int config_fill ;
 int idalloctm (int *,int *,int ,int) ;
 int quarantine_drain (int *,int *,int ) ;
 int tcache_get (int *,int) ;
 int * tsd_quarantine_get (int *) ;
 int tsd_quarantine_set (int *,int *) ;

void
quarantine_cleanup(tsd_t *tsd)
{
 quarantine_t *quarantine;

 if (!config_fill)
  return;

 quarantine = tsd_quarantine_get(tsd);
 if (quarantine != ((void*)0)) {
  quarantine_drain(tsd, quarantine, 0);
  idalloctm(tsd, quarantine, tcache_get(tsd, 0), 1);
  tsd_quarantine_set(tsd, ((void*)0));
 }
}
