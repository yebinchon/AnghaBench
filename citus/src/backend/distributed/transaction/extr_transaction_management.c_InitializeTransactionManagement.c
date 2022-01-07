
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AdjustMaxPreparedTransactions () ;
 int AllocSetContextCreateExtended (int ,char*,int,int,int) ;
 int CommitContext ;
 int CoordinatedSubTransactionCallback ;
 int CoordinatedTransactionCallback ;
 int RegisterSubXactCallback (int ,int *) ;
 int RegisterXactCallback (int ,int *) ;
 int TopMemoryContext ;

void
InitializeTransactionManagement(void)
{

 RegisterXactCallback(CoordinatedTransactionCallback, ((void*)0));
 RegisterSubXactCallback(CoordinatedSubTransactionCallback, ((void*)0));

 AdjustMaxPreparedTransactions();


 CommitContext = AllocSetContextCreateExtended(TopMemoryContext,
              "CommitContext",
              8 * 1024,
              8 * 1024,
              8 * 1024);
}
