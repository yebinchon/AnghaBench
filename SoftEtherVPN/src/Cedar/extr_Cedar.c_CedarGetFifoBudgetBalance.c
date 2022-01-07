
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int CEDAR ;


 scalar_t__ CedarGetFifoBudgetConsuming (int *) ;
 scalar_t__ FIFO_BUDGET ;

UINT CedarGetFifoBudgetBalance(CEDAR *c)
{
 UINT current = CedarGetFifoBudgetConsuming(c);
 UINT budget = FIFO_BUDGET;

 if (current <= budget)
 {
  return budget - current;
 }
 else
 {
  return 0;
 }
}
