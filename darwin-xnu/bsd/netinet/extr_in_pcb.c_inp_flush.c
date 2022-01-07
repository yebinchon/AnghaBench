
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_4__ {TYPE_1__* ro_rt; } ;
struct inpcb {scalar_t__ inp_flowhash; struct ifnet* inp_last_outifp; TYPE_2__ inp_route; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {struct ifnet* rt_ifp; } ;


 int EINVAL ;
 int SO_TC_ALL ;
 int SO_VALID_TC (int) ;
 int if_qflush_sc (struct ifnet*,int ,scalar_t__,int *,int *,int ) ;
 int so_tc2msc (int) ;

int
inp_flush(struct inpcb *inp, int optval)
{
 u_int32_t flowhash = inp->inp_flowhash;
 struct ifnet *rtifp, *oifp;


 if (optval != SO_TC_ALL && !SO_VALID_TC(optval))
  return (EINVAL);


 if (flowhash == 0)
  return (0);


 rtifp = ((inp->inp_route.ro_rt != ((void*)0)) ?
     inp->inp_route.ro_rt->rt_ifp : ((void*)0));
 oifp = inp->inp_last_outifp;

 if (rtifp != ((void*)0))
  if_qflush_sc(rtifp, so_tc2msc(optval), flowhash, ((void*)0), ((void*)0), 0);
 if (oifp != ((void*)0) && oifp != rtifp)
  if_qflush_sc(oifp, so_tc2msc(optval), flowhash, ((void*)0), ((void*)0), 0);

 return (0);
}
