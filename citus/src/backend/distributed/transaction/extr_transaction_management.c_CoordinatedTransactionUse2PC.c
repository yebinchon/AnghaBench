
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int CoordinatedTransactionUses2PC ;
 int InCoordinatedTransaction () ;

void
CoordinatedTransactionUse2PC(void)
{
 Assert(InCoordinatedTransaction());

 CoordinatedTransactionUses2PC = 1;
}
