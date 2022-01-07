
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int setLocalCmds; int subId; } ;
typedef TYPE_1__ SubXactContext ;
typedef int SubTransactionId ;
typedef int MemoryContext ;


 int CurTransactionContext ;
 int MemoryContextSwitchTo (int ) ;
 int activeSetStmts ;
 int activeSubXactContexts ;
 int lcons (TYPE_1__*,int ) ;
 int makeStringInfo () ;
 TYPE_1__* palloc (int) ;

__attribute__((used)) static void
PushSubXact(SubTransactionId subId)
{
 MemoryContext old_context = MemoryContextSwitchTo(CurTransactionContext);


 SubXactContext *state = palloc(sizeof(SubXactContext));
 state->subId = subId;
 state->setLocalCmds = activeSetStmts;


 activeSubXactContexts = lcons(state, activeSubXactContexts);
 activeSetStmts = makeStringInfo();

 MemoryContextSwitchTo(old_context);
}
