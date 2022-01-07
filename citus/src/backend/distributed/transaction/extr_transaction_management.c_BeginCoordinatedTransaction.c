
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssignDistributedTransactionId () ;
 scalar_t__ COORD_TRANS_IDLE ;
 scalar_t__ COORD_TRANS_NONE ;
 scalar_t__ COORD_TRANS_STARTED ;
 scalar_t__ CurrentCoordinatedTransactionState ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
BeginCoordinatedTransaction(void)
{
 if (CurrentCoordinatedTransactionState != COORD_TRANS_NONE &&
  CurrentCoordinatedTransactionState != COORD_TRANS_IDLE)
 {
  ereport(ERROR, (errmsg("starting transaction in wrong state")));
 }

 CurrentCoordinatedTransactionState = COORD_TRANS_STARTED;

 AssignDistributedTransactionId();
}
