
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int tif_maxpri; int * tif_ifq; } ;
struct ifnet {int if_snd; } ;


 int LOG_DEBUG ;
 int M_WAITOK ;
 int bzero (struct tcq_if*,int ) ;
 int if_name (struct ifnet*) ;
 int log (int ,char*,int ,int ) ;
 scalar_t__ pktsched_verbose ;
 int tcq_size ;
 int tcq_style (struct tcq_if*) ;
 int tcq_zone ;
 struct tcq_if* zalloc (int ) ;
 struct tcq_if* zalloc_noblock (int ) ;

struct tcq_if *
tcq_alloc(struct ifnet *ifp, int how)
{
 struct tcq_if *tif;

 tif = (how == M_WAITOK) ? zalloc(tcq_zone) : zalloc_noblock(tcq_zone);
 if (tif == ((void*)0))
  return (((void*)0));

 bzero(tif, tcq_size);
 tif->tif_maxpri = -1;
 tif->tif_ifq = &ifp->if_snd;

 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s scheduler allocated\n",
      if_name(ifp), tcq_style(tif));
 }

 return (tif);
}
