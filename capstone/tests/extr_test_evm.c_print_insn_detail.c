
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int csh ;
struct TYPE_6__ {TYPE_1__* detail; } ;
typedef TYPE_2__ cs_insn ;
struct TYPE_7__ {int pop; int push; int fee; } ;
typedef TYPE_3__ cs_evm ;
struct TYPE_5__ {int groups_count; int * groups; TYPE_3__ evm; } ;


 char* cs_group_name (int ,int ) ;
 int handle ;
 int printf (char*,...) ;

__attribute__((used)) static void print_insn_detail(csh cs_handle, cs_insn *ins)
{
 cs_evm *evm;


 if (ins->detail == ((void*)0))
  return;

 evm = &(ins->detail->evm);

 if (evm->pop)
  printf("\tPop:     %u\n", evm->pop);

 if (evm->push)
  printf("\tPush:    %u\n", evm->push);

 if (evm->fee)
  printf("\tGas fee: %u\n", evm->fee);

 if (ins->detail->groups_count) {
  int j;

  printf("\tGroups: ");
  for(j = 0; j < ins->detail->groups_count; j++) {
   printf("%s ", cs_group_name(handle, ins->detail->groups[j]));
  }
  printf("\n");
 }
}
