
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_7__ {void* all; } ;
struct TYPE_8__ {void* PC; void* PR; void* MACL; void* MACH; void* VBR; void* GBR; TYPE_1__ SR; void** R; } ;
typedef TYPE_2__ sh2regs_struct ;
struct TYPE_9__ {int debugsh; } ;
typedef TYPE_3__ YuiSh ;


 int SH2GetRegisters (int ,TYPE_2__*) ;
 int SH2SetRegisters (int ,TYPE_2__*) ;

__attribute__((used)) static void sh2setRegister( YuiSh *sh2, int nReg, u32 value ) {


  sh2regs_struct sh2regs;
  SH2GetRegisters(sh2->debugsh, &sh2regs);

  if ( nReg < 16 ) sh2regs.R[nReg] = value;
  switch ( nReg ) {
  case 16: sh2regs.SR.all = value; break;
  case 17: sh2regs.GBR = value; break;
  case 18: sh2regs.VBR = value; break;
  case 19: sh2regs.MACH = value; break;
  case 20: sh2regs.MACL = value; break;
  case 21: sh2regs.PR = value; break;
  case 22: sh2regs.PC = value; break;
  }

  SH2SetRegisters(sh2->debugsh, &sh2regs);
}
