
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dummynet_evhdlr_ctxt ;
 int eventhandler_lists_ctxt_init (int *) ;

void
dummynet_init(void)
{
 eventhandler_lists_ctxt_init(&dummynet_evhdlr_ctxt);
}
