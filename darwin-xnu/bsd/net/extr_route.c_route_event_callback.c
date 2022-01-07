
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int rt_flags; int rt_evhdlr_ctxt; } ;
struct route_event {int route_event_code; int rt_addr; int * evtag; struct rtentry* rt; } ;
typedef int * eventhandler_tag ;


 int EVENTHANDLER_DEREGISTER (int *,int ,int *) ;
 int EVENTHANDLER_INVOKE (int *,int ,int ,int,struct sockaddr*,int ) ;
 int ROUTE_EVHDLR_DEREGISTER ;
 int VERIFY (int ) ;
 int route_event ;
 int rt_key (struct rtentry*) ;
 int rtfree (struct rtentry*) ;

__attribute__((used)) static void
route_event_callback(void *arg)
{
 struct route_event *p_rt_ev = (struct route_event *)arg;
 struct rtentry *rt = p_rt_ev->rt;
 eventhandler_tag evtag = p_rt_ev->evtag;
 int route_ev_code = p_rt_ev->route_event_code;

 if (route_ev_code == ROUTE_EVHDLR_DEREGISTER) {
  VERIFY(evtag != ((void*)0));
  EVENTHANDLER_DEREGISTER(&rt->rt_evhdlr_ctxt, route_event,
      evtag);
  rtfree(rt);
  return;
 }

 EVENTHANDLER_INVOKE(&rt->rt_evhdlr_ctxt, route_event, rt_key(rt),
     route_ev_code, (struct sockaddr *)&p_rt_ev->rt_addr,
     rt->rt_flags);


 rtfree(rt);

}
