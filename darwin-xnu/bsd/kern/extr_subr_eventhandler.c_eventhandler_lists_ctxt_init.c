
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventhandler_lists_ctxt {int eventhandler_lists_initted; int eventhandler_mutex; int eventhandler_lists; } ;


 int TAILQ_INIT (int *) ;
 int VERIFY (int ) ;
 int eventhandler_mutex_attr ;
 int eventhandler_mutex_grp ;
 int lck_mtx_init (int *,int ,int ) ;

void
eventhandler_lists_ctxt_init(struct eventhandler_lists_ctxt *evthdlr_lists_ctxt)
{
 VERIFY(evthdlr_lists_ctxt != ((void*)0));

 TAILQ_INIT(&evthdlr_lists_ctxt->eventhandler_lists);
 evthdlr_lists_ctxt->eventhandler_lists_initted = 1;
 lck_mtx_init(&evthdlr_lists_ctxt->eventhandler_mutex,
     eventhandler_mutex_grp, eventhandler_mutex_attr);
}
