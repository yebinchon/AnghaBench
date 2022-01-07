
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct eventhandler_list {int dummy; } ;
struct eventhandler_entry_generic {int dummy; } ;


 int MCR_SLEEP ;
 void* eg_cache ;
 int eg_size ;
 void* el_cache ;
 void* el_lock_attr ;
 void* el_lock_grp ;
 int el_lock_grp_attr ;
 int el_size ;
 int eventhandler_lists_ctxt_init (int *) ;
 void* eventhandler_mutex_attr ;
 void* eventhandler_mutex_grp ;
 int eventhandler_mutex_grp_attr ;
 int evthdlr_lists_ctxt_glb ;
 void* lck_attr_alloc_init () ;
 void* lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 void* mcache_create (char*,int,int,int ,int ) ;

void
eventhandler_init(void)
{
 eventhandler_mutex_grp_attr = lck_grp_attr_alloc_init();
 eventhandler_mutex_grp = lck_grp_alloc_init("eventhandler",
     eventhandler_mutex_grp_attr);
 eventhandler_mutex_attr = lck_attr_alloc_init();

 el_lock_grp_attr = lck_grp_attr_alloc_init();
 el_lock_grp = lck_grp_alloc_init("eventhandler list",
     el_lock_grp_attr);
 el_lock_attr = lck_attr_alloc_init();

 eventhandler_lists_ctxt_init(&evthdlr_lists_ctxt_glb);

 eg_size = sizeof (struct eventhandler_entry_generic);
 eg_cache = mcache_create("eventhdlr_generic", eg_size,
     sizeof (uint64_t), 0, MCR_SLEEP);

 el_size = sizeof (struct eventhandler_list);
 el_cache = mcache_create("eventhdlr_list", el_size,
     sizeof (uint64_t), 0, MCR_SLEEP);
}
