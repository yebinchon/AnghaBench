
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int EXLE; int IOSEL; scalar_t__ DDR; scalar_t__ PDR; int SF; int SR; scalar_t__ OREG; int COMREG; scalar_t__ IREG; } ;
struct TYPE_4__ {int member_1; int member_0; } ;
typedef int SmpcInternal ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 scalar_t__ SmpcInternalVars ;
 TYPE_3__* SmpcRegs ;
 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

int SmpcSaveState(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };

   offset = StateWriteHeader(fp, "SMPC", 3);


   ywrite(&check, (void *)SmpcRegs->IREG, sizeof(u8), 7, fp);
   ywrite(&check, (void *)&SmpcRegs->COMREG, sizeof(u8), 1, fp);
   ywrite(&check, (void *)SmpcRegs->OREG, sizeof(u8), 32, fp);
   ywrite(&check, (void *)&SmpcRegs->SR, sizeof(u8), 1, fp);
   ywrite(&check, (void *)&SmpcRegs->SF, sizeof(u8), 1, fp);
   ywrite(&check, (void *)SmpcRegs->PDR, sizeof(u8), 2, fp);
   ywrite(&check, (void *)SmpcRegs->DDR, sizeof(u8), 2, fp);
   ywrite(&check, (void *)&SmpcRegs->IOSEL, sizeof(u8), 1, fp);
   ywrite(&check, (void *)&SmpcRegs->EXLE, sizeof(u8), 1, fp);


   ywrite(&check, (void *)SmpcInternalVars, sizeof(SmpcInternal), 1, fp);



   return StateFinishHeader(fp, offset);
}
