
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_event {int val; int in6_address; int in6_ifp; int in6_event_code; } ;


 int EVENTHANDLER_INVOKE (int *,int ,int ,int ,int *,int ) ;
 int in6_event ;
 int in6_evhdlr_ctxt ;

__attribute__((used)) static void
in6_event_callback(void *arg)
{
 struct in6_event *p_in6_ev = (struct in6_event *)arg;

 EVENTHANDLER_INVOKE(&in6_evhdlr_ctxt, in6_event,
     p_in6_ev->in6_event_code, p_in6_ev->in6_ifp,
     &p_in6_ev->in6_address, p_in6_ev->val);
}
