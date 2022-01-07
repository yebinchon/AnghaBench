
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COORD_TRANS_IDLE ;
 scalar_t__ COORD_TRANS_NONE ;
 scalar_t__ CurrentCoordinatedTransactionState ;

bool
InCoordinatedTransaction(void)
{
 return CurrentCoordinatedTransactionState != COORD_TRANS_NONE &&
     CurrentCoordinatedTransactionState != COORD_TRANS_IDLE;
}
