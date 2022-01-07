
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ all; } ;
struct TYPE_7__ {scalar_t__* R; scalar_t__ PC; scalar_t__ PR; scalar_t__ MACL; scalar_t__ MACH; scalar_t__ VBR; scalar_t__ GBR; TYPE_1__ SR; } ;
struct TYPE_6__ {int isslave; TYPE_4__ regs; } ;
typedef TYPE_2__ SH2_struct ;


 int AllocAmendPrintString (char*,void const*) ;
 int SH2GetRegisters (TYPE_2__*,TYPE_4__*) ;
 int YuiErrorMsg (char*) ;
 char* _ (char*) ;
 int sprintf (char*,char*,char*,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long,long) ;

void YabSetError(int type, const void *extra)
{
   char tempstr[512];
   SH2_struct *sh;

   switch (type)
   {
      case 137:
         AllocAmendPrintString(_("File not found: "), extra);
         break;
      case 134:
         YuiErrorMsg(_("Error allocating memory\n"));
         break;
      case 136:
         AllocAmendPrintString(_("Error reading file: "), extra);
         break;
      case 135:
         AllocAmendPrintString(_("Error writing file: "), extra);
         break;
      case 138:
         AllocAmendPrintString(_("Cannot initialize "), extra);
         break;
      case 131:
         sh = (SH2_struct *)extra;
         SH2GetRegisters(sh, &sh->regs);
         sprintf(tempstr, "%s SH2 invalid opcode\n\n"
                          "R0 =  %08lX\tR12 =  %08lX\n"
                          "R1 =  %08lX\tR13 =  %08lX\n"
                          "R2 =  %08lX\tR14 =  %08lX\n"
                          "R3 =  %08lX\tR15 =  %08lX\n"
                          "R4 =  %08lX\tSR =   %08lX\n"
                          "R5 =  %08lX\tGBR =  %08lX\n"
                          "R6 =  %08lX\tVBR =  %08lX\n"
                          "R7 =  %08lX\tMACH = %08lX\n"
                          "R8 =  %08lX\tMACL = %08lX\n"
                          "R9 =  %08lX\tPR =   %08lX\n"
                          "R10 = %08lX\tPC =   %08lX\n"
                          "R11 = %08lX\n", sh->isslave ? "Slave" : "Master",
                          (long)sh->regs.R[0], (long)sh->regs.R[12],
                          (long)sh->regs.R[1], (long)sh->regs.R[13],
                          (long)sh->regs.R[2], (long)sh->regs.R[14],
                          (long)sh->regs.R[3], (long)sh->regs.R[15],
                          (long)sh->regs.R[4], (long)sh->regs.SR.all,
                          (long)sh->regs.R[5], (long)sh->regs.GBR,
                          (long)sh->regs.R[6], (long)sh->regs.VBR,
                          (long)sh->regs.R[7], (long)sh->regs.MACH,
                          (long)sh->regs.R[8], (long)sh->regs.MACL,
                          (long)sh->regs.R[9], (long)sh->regs.PR,
                          (long)sh->regs.R[10], (long)sh->regs.PC,
                          (long)sh->regs.R[11]);
         YuiErrorMsg(tempstr);
         break;
      case 130:
         YuiErrorMsg(_("SH2 read error\n"));
         break;
      case 129:
         YuiErrorMsg(_("SH2 write error\n"));
         break;
      case 132:
         AllocAmendPrintString(_("SDL Error: "), extra);
         break;
      case 133:
         YuiErrorMsg((char *)extra);
         break;
      case 128:
      default:
         YuiErrorMsg(_("Unknown error occurred\n"));
         break;
   }
}
