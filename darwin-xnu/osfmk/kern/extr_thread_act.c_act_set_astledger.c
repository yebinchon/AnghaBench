
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int AST_LEDGER ;
 int act_set_ast (int ,int ) ;

void
act_set_astledger(thread_t thread)
{
 act_set_ast(thread, AST_LEDGER);
}
