
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
 int SH2DynarecGetGBR (int *) ;
 int SH2DynarecGetMACH (int *) ;
 int SH2DynarecGetMACL (int *) ;
 int SH2DynarecGetPC (int *) ;
 int SH2DynarecGetPR (int *) ;
 int SH2DynarecGetSR (int *) ;
 int SH2DynarecGetVBR (int *) ;
 int master_reg ;
 int memcpy (int *,int ,int) ;
 int slave_reg ;

void SH2DynarecGetRegisters(SH2_struct *context, sh2regs_struct *regs)
{
  if(context==MSH2)
    memcpy(&(regs->R), master_reg, 16*sizeof(int));
  else
    memcpy(&(regs->R), slave_reg, 16*sizeof(int));
  regs->SR.all=SH2DynarecGetSR(context);
  regs->GBR=SH2DynarecGetGBR(context);
  regs->VBR=SH2DynarecGetVBR(context);
  regs->MACH=SH2DynarecGetMACH(context);
  regs->MACL=SH2DynarecGetMACL(context);
  regs->PR=SH2DynarecGetPR(context);
  regs->PC=SH2DynarecGetPC(context);
}
