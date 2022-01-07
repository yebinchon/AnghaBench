
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subId; int setLocalCmds; } ;
typedef TYPE_1__ SubXactContext ;
typedef scalar_t__ SubTransactionId ;
typedef int MemoryContext ;


 int Assert (int) ;
 int CurTransactionContext ;
 int MemoryContextSwitchTo (int ) ;
 int activeSetStmts ;
 int activeSubXactContexts ;
 TYPE_1__* linitial (int ) ;
 int list_delete_first (int ) ;

__attribute__((used)) static void
PopSubXact(SubTransactionId subId)
{
 MemoryContext old_context = MemoryContextSwitchTo(CurTransactionContext);
 SubXactContext *state = linitial(activeSubXactContexts);






 Assert(state->subId == subId);
 activeSetStmts = state->setLocalCmds;
 activeSubXactContexts = list_delete_first(activeSubXactContexts);

 MemoryContextSwitchTo(old_context);
}
