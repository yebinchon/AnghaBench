
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;
struct route_event {int route_event_code; struct rtentry* gwrt; struct rtentry* rt; } ;


 int VERIFY (int ) ;
 int bzero (struct route_event*,int) ;

void route_event_init(struct route_event *p_route_ev, struct rtentry *rt,
    struct rtentry *gwrt, int route_ev_code)
{
 VERIFY(p_route_ev != ((void*)0));
 bzero(p_route_ev, sizeof(*p_route_ev));

 p_route_ev->rt = rt;
 p_route_ev->gwrt = gwrt;
 p_route_ev->route_event_code = route_ev_code;
}
