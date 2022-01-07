
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
struct TYPE_5__ {TYPE_3__ evm; } ;


 int printf (char*,int) ;

void print_insn_detail_evm(csh handle, cs_insn *ins)
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
}
