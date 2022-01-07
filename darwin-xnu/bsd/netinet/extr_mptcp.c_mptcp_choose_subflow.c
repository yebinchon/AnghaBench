
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_srtt; scalar_t__ t_rxtshift; } ;
struct mptsub {int mpts_socket; } ;


 struct tcpcb* sototcpcb (int ) ;

__attribute__((used)) static struct mptsub *
mptcp_choose_subflow(struct mptsub *mpts, struct mptsub *curbest, int *currtt)
{
 struct tcpcb *tp = sototcpcb(mpts->mpts_socket);






 if (tp->t_srtt && *currtt > tp->t_srtt &&
     (curbest == ((void*)0) || tp->t_rxtshift == 0 ||
      sototcpcb(curbest->mpts_socket)->t_rxtshift)) {
  *currtt = tp->t_srtt;
  return (mpts);
 }




 if (curbest &&
     sototcpcb(curbest->mpts_socket)->t_rxtshift &&
     tp->t_rxtshift == 0) {
  *currtt = tp->t_srtt;
  return (mpts);
 }

 return (curbest != ((void*)0) ? curbest : mpts);
}
