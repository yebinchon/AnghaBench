
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int *,int ,int ,int ,int ) ;
 int eventhandler_entry_dummy_arg ;
 int eventhandler_lists_ctxt_init (int *) ;
 int if_low_power_event ;
 int if_low_power_evhdlr_callback ;
 int if_low_power_evhdlr_ctx ;

void
if_low_power_evhdlr_init(void)
{
 eventhandler_lists_ctxt_init(&if_low_power_evhdlr_ctx);

 (void) EVENTHANDLER_REGISTER(&if_low_power_evhdlr_ctx,
     if_low_power_event,
     if_low_power_evhdlr_callback,
     eventhandler_entry_dummy_arg,
     EVENTHANDLER_PRI_ANY);
}
