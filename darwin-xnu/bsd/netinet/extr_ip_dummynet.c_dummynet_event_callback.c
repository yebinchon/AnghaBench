
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummynet_event {int dummy; } ;


 int EVENTHANDLER_INVOKE (int *,int ,struct dummynet_event*) ;
 int dummynet_event ;
 int dummynet_evhdlr_ctxt ;

__attribute__((used)) static void
dummynet_event_callback(void *arg)
{
 struct dummynet_event *p_dn_ev = (struct dummynet_event *)arg;

 EVENTHANDLER_INVOKE(&dummynet_evhdlr_ctxt, dummynet_event, p_dn_ev);
 return;
}
