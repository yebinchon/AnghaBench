
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sh2regs_struct ;
struct TYPE_3__ {int regs; } ;
typedef TYPE_1__ SH2_struct ;


 int memcpy (int *,int const*,int) ;

void SH2InterpreterSetRegisters(SH2_struct *context, const sh2regs_struct *regs)
{
   memcpy(&context->regs, regs, sizeof(sh2regs_struct));
}
