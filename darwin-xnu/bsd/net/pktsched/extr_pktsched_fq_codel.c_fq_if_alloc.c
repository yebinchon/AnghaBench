
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ifnet {int if_snd; } ;
struct TYPE_5__ {int fqs_fclist; int fqs_pkt_droplimit; int fqs_update_interval; int fqs_target_qdelay; int fqs_ptype; int * fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;
typedef int classq_pkt_type_t ;


 int IFCQ_PKT_DROP_LIMIT (int *) ;
 int STAILQ_INIT (int *) ;
 int bzero (TYPE_1__*,int ) ;
 int fq_if_size ;
 int fq_if_zone ;
 int ifclassq_calc_target_qdelay (struct ifnet*,int *) ;
 int ifclassq_calc_update_interval (int *) ;
 TYPE_1__* zalloc (int ) ;

fq_if_t *
fq_if_alloc(struct ifnet *ifp, classq_pkt_type_t ptype)
{
 fq_if_t *fqs;
 fqs = zalloc(fq_if_zone);
 if (fqs == ((void*)0))
  return (((void*)0));

 bzero(fqs, fq_if_size);
 fqs->fqs_ifq = &ifp->if_snd;
 fqs->fqs_ptype = ptype;


 ifclassq_calc_target_qdelay(ifp, &fqs->fqs_target_qdelay);


 ifclassq_calc_update_interval(&fqs->fqs_update_interval);


 fqs->fqs_pkt_droplimit = IFCQ_PKT_DROP_LIMIT(&ifp->if_snd);
 STAILQ_INIT(&fqs->fqs_fclist);
 return (fqs);
}
