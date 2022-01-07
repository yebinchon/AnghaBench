
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct SStream {int dummy; } ;
typedef int csh ;
struct TYPE_3__ {scalar_t__ Opcode; int * evm_data; scalar_t__ csh; } ;
typedef TYPE_1__ MCInst ;


 scalar_t__ EVM_INS_PUSH1 ;
 scalar_t__ EVM_INS_PUSH32 ;
 int EVM_insn_name (int ,scalar_t__) ;
 int SStream_concat (struct SStream*,char*,...) ;
 int SStream_concat0 (struct SStream*,char*) ;

void EVM_printInst(MCInst *MI, struct SStream *O, void *PrinterInfo)
{
 SStream_concat(O, EVM_insn_name((csh)MI->csh, MI->Opcode));

 if (MI->Opcode >= EVM_INS_PUSH1 && MI->Opcode <= EVM_INS_PUSH32) {
  unsigned int i;

  SStream_concat0(O, "\t");
  for (i = 0; i < MI->Opcode - EVM_INS_PUSH1 + 1; i++) {
   SStream_concat(O, "%02x", MI->evm_data[i]);
  }
 }
}
