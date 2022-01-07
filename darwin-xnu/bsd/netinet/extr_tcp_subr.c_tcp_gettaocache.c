
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; int rt_rmx; } ;
struct rmxp_tao {int dummy; } ;
struct inpcb {int inp_vflag; } ;


 int IFSCOPE_NONE ;
 int INP_IPV6 ;
 int RTF_HOST ;
 int RTF_UP ;
 int RT_UNLOCK (struct rtentry*) ;
 struct rmxp_tao* rmx_taop (int ) ;
 struct rtentry* tcp_rtlookup (struct inpcb*,int ) ;
 struct rtentry* tcp_rtlookup6 (struct inpcb*,int ) ;

struct rmxp_tao *
tcp_gettaocache(struct inpcb *inp)
{
 struct rtentry *rt;
 struct rmxp_tao *taop;






 rt = tcp_rtlookup(inp, IFSCOPE_NONE);


 if (rt == ((void*)0) ||
     (rt->rt_flags & (RTF_UP|RTF_HOST)) != (RTF_UP|RTF_HOST)) {

  if (rt != ((void*)0))
   RT_UNLOCK(rt);
  return (((void*)0));
 }

 taop = rmx_taop(rt->rt_rmx);

 RT_UNLOCK(rt);
 return (taop);
}
