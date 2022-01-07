
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int csh ;
typedef int cs_mode ;
struct TYPE_6__ {TYPE_1__* detail; } ;
typedef TYPE_2__ cs_insn ;
struct TYPE_7__ {scalar_t__ fee; scalar_t__ push; scalar_t__ pop; } ;
typedef TYPE_3__ cs_evm ;
struct TYPE_5__ {TYPE_3__ evm; } ;


 int add_str (char**,char*,scalar_t__) ;
 scalar_t__ malloc (int) ;

char *get_detail_evm(csh *handle, cs_mode mode, cs_insn *ins)
{
 cs_evm *evm;
 char *result;

 result = (char *)malloc(sizeof(char));
 result[0] = '\0';

 if (ins->detail == ((void*)0))
  return result;

 evm = &(ins->detail->evm);

 if (evm->pop)
  add_str(&result, " ; Pop: %u", evm->pop);

 if (evm->push)
  add_str(&result, " ; Push: %u", evm->push);

 if (evm->fee)
  add_str(&result, " ; Gas fee: %u", evm->fee);

 return result;
}
