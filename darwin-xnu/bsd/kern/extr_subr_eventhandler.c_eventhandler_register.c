
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eventhandler_lists_ctxt {int dummy; } ;
struct eventhandler_list {int dummy; } ;
struct eventhandler_entry_arg {int dummy; } ;
struct TYPE_2__ {int ee_priority; struct eventhandler_entry_arg ee_arg; } ;
struct eventhandler_entry_generic {TYPE_1__ ee; void* func; } ;
typedef int eventhandler_tag ;


 int MCR_SLEEP ;
 int bzero (struct eventhandler_entry_generic*,int ) ;
 int eg_cache ;
 int eg_size ;
 int eventhandler_register_internal (struct eventhandler_lists_ctxt*,struct eventhandler_list*,char const*,TYPE_1__*) ;
 struct eventhandler_entry_generic* mcache_alloc (int ,int ) ;

eventhandler_tag
eventhandler_register(struct eventhandler_lists_ctxt *evthdlr_lists_ctxt,
    struct eventhandler_list *list, const char *name,
    void *func, struct eventhandler_entry_arg arg, int priority)
{
 struct eventhandler_entry_generic *eg;


 eg = mcache_alloc(eg_cache, MCR_SLEEP);
 bzero(eg, eg_size);
 eg->func = func;
 eg->ee.ee_arg = arg;
 eg->ee.ee_priority = priority;

 return (eventhandler_register_internal(evthdlr_lists_ctxt, list, name, &eg->ee));
}
