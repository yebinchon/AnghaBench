
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int FifoBudget; } ;
typedef TYPE_1__ CEDAR ;



UINT CedarGetFifoBudgetConsuming(CEDAR *c)
{

 if (c == ((void*)0))
 {
  return 0;
 }

 return c->FifoBudget;
}
