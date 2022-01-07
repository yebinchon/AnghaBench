
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int all; } ;
struct TYPE_5__ {int PC; int PR; int MACL; int MACH; int VBR; int GBR; TYPE_1__ SR; int R; } ;
typedef TYPE_2__ sh2regs_struct ;
typedef int SH2_struct ;


 int * MSH2 ;
 int SH2DynarecSetGBR (int *,int ) ;
 int SH2DynarecSetMACH (int *,int ) ;
 int SH2DynarecSetMACL (int *,int ) ;
 int SH2DynarecSetPC (int *,int ) ;
 int SH2DynarecSetPR (int *,int ) ;
 int SH2DynarecSetSR (int *,int ) ;
 int SH2DynarecSetVBR (int *,int ) ;
 int master_reg ;
 int memcpy (int ,int *,int) ;
 int slave_reg ;

void SH2DynarecSetRegisters(SH2_struct *context, const sh2regs_struct *regs)
{
  if(context==MSH2)
    memcpy(master_reg, &(regs->R), 16*sizeof(int));
  else
    memcpy(slave_reg, &(regs->R), 16*sizeof(int));
  SH2DynarecSetSR(context, regs->SR.all);
  SH2DynarecSetGBR(context, regs->GBR);
  SH2DynarecSetVBR(context, regs->VBR);
  SH2DynarecSetMACH(context, regs->MACH);
  SH2DynarecSetMACL(context, regs->MACL);
  SH2DynarecSetPR(context, regs->PR);
  SH2DynarecSetPC(context, regs->PC);
}
