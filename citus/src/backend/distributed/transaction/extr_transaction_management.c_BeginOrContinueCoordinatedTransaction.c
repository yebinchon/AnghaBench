
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BeginCoordinatedTransaction () ;
 scalar_t__ COORD_TRANS_STARTED ;
 scalar_t__ CurrentCoordinatedTransactionState ;

void
BeginOrContinueCoordinatedTransaction(void)
{
 if (CurrentCoordinatedTransactionState == COORD_TRANS_STARTED)
 {
  return;
 }

 BeginCoordinatedTransaction();
}
