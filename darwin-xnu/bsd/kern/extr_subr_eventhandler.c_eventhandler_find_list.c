
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventhandler_lists_ctxt {int eventhandler_mutex; int eventhandler_lists_initted; } ;
struct eventhandler_list {int dummy; } ;


 int EHL_LOCK_SPIN (struct eventhandler_list*) ;
 struct eventhandler_list* _eventhandler_find_list (struct eventhandler_lists_ctxt*,char const*) ;
 struct eventhandler_lists_ctxt evthdlr_lists_ctxt_glb ;
 int lck_mtx_convert_spin (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

struct eventhandler_list *
eventhandler_find_list(struct eventhandler_lists_ctxt *evthdlr_lists_ctxt,
    const char *name)
{
 struct eventhandler_list *list;

 if (evthdlr_lists_ctxt == ((void*)0))
  evthdlr_lists_ctxt = &evthdlr_lists_ctxt_glb;

 if (!evthdlr_lists_ctxt->eventhandler_lists_initted)
  return(((void*)0));


 lck_mtx_lock_spin(&evthdlr_lists_ctxt->eventhandler_mutex);
 list = _eventhandler_find_list(evthdlr_lists_ctxt, name);
 if (list != ((void*)0)) {
  lck_mtx_convert_spin(&evthdlr_lists_ctxt->eventhandler_mutex);
  EHL_LOCK_SPIN(list);
 }
 lck_mtx_unlock(&evthdlr_lists_ctxt->eventhandler_mutex);

 return(list);
}
