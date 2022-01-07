
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_int64_t ;
struct sfb {char* sfb_eff_rate; int sfb_qid; int sfb_target_qdelay; struct ifnet* sfb_ifp; } ;
struct ifnet {int dummy; } ;
typedef int cqev_t ;







 int LOG_DEBUG ;
 int VERIFY (int ) ;
 int classq_verbose ;
 int if_name (struct ifnet*) ;
 int ifclassq_calc_target_qdelay (struct ifnet*,int *) ;
 char* ifnet_output_linkrate (struct ifnet*) ;
 int log (int ,char*,int ,int ,char*) ;
 int sfb_calc_holdtime (struct sfb*,char*) ;
 int sfb_calc_pboxtime (struct sfb*,char*) ;
 int sfb_calc_update_interval (struct sfb*,char*) ;
 int sfb_resetq (struct sfb*,int) ;

void
sfb_updateq(struct sfb *sp, cqev_t ev)
{
 struct ifnet *ifp = sp->sfb_ifp;

 VERIFY(ifp != ((void*)0));

 switch (ev) {
 case 132: {
  u_int64_t eff_rate = ifnet_output_linkrate(ifp);


  if (eff_rate == sp->sfb_eff_rate)
   break;

  if (classq_verbose) {
   log(LOG_DEBUG, "%s: SFB qid=%d, adapting to new "
       "eff_rate=%llu bps\n", if_name(ifp), sp->sfb_qid,
       eff_rate);
  }
  sfb_calc_holdtime(sp, eff_rate);
  sfb_calc_pboxtime(sp, eff_rate);
  ifclassq_calc_target_qdelay(ifp, &sp->sfb_target_qdelay);
  sfb_calc_update_interval(sp, eff_rate);
  break;
 }

 case 128:
 case 131:
  if (classq_verbose) {
   log(LOG_DEBUG, "%s: SFB qid=%d, resetting due to "
       "link %s\n", if_name(ifp), sp->sfb_qid,
       (ev == 128) ? "UP" : "DOWN");
  }
  sfb_resetq(sp, ev);
  break;

 case 130:
 case 129:
 default:
  break;
 }
}
