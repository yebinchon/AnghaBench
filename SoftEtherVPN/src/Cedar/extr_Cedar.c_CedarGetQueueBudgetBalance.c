
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int CEDAR ;


 scalar_t__ CedarGetQueueBudgetConsuming (int *) ;
 scalar_t__ QUEUE_BUDGET ;

UINT CedarGetQueueBudgetBalance(CEDAR *c)
{
 UINT current = CedarGetQueueBudgetConsuming(c);
 UINT budget = QUEUE_BUDGET;

 if (current <= budget)
 {
  return budget - current;
 }
 else
 {
  return 0;
 }
}
