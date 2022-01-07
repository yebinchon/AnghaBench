
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct intf_event {int intf_event_code; int addr; int ifp; } ;


 int EVENTHANDLER_INVOKE (int *,int ,int ,struct sockaddr*,int ) ;
 int ifnet_event ;
 int ifnet_evhdlr_ctxt ;

__attribute__((used)) static void
intf_event_callback(void *arg)
{
 struct intf_event *p_intf_ev = (struct intf_event *)arg;


 EVENTHANDLER_INVOKE(&ifnet_evhdlr_ctxt, ifnet_event, p_intf_ev->ifp,
     (struct sockaddr *)&(p_intf_ev->addr), p_intf_ev->intf_event_code);
}
