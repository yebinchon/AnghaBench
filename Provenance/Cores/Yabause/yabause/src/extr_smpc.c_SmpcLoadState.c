
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


 int SEEK_CUR ;
 scalar_t__ SmpcInternalVars ;
 TYPE_3__* SmpcRegs ;
 int fseek (int *,int,int ) ;
 int yread (TYPE_1__*,void*,int,int,int *) ;

int SmpcLoadState(FILE *fp, int version, int size)
{
   IOCheck_struct check = { 0, 0 };
   int internalsizev2 = sizeof(SmpcInternal) - 8;


   yread(&check, (void *)SmpcRegs->IREG, sizeof(u8), 7, fp);
   yread(&check, (void *)&SmpcRegs->COMREG, sizeof(u8), 1, fp);
   yread(&check, (void *)SmpcRegs->OREG, sizeof(u8), 32, fp);
   yread(&check, (void *)&SmpcRegs->SR, sizeof(u8), 1, fp);
   yread(&check, (void *)&SmpcRegs->SF, sizeof(u8), 1, fp);
   yread(&check, (void *)SmpcRegs->PDR, sizeof(u8), 2, fp);
   yread(&check, (void *)SmpcRegs->DDR, sizeof(u8), 2, fp);
   yread(&check, (void *)&SmpcRegs->IOSEL, sizeof(u8), 1, fp);
   yread(&check, (void *)&SmpcRegs->EXLE, sizeof(u8), 1, fp);


   if (version == 1)
   {


      if ((size - 48) == internalsizev2)
         yread(&check, (void *)SmpcInternalVars, internalsizev2, 1, fp);
      else if ((size - 48) == 24)
         yread(&check, (void *)SmpcInternalVars, 24, 1, fp);
      else
         fseek(fp, size - 48, SEEK_CUR);
   }
   else if (version == 2)
      yread(&check, (void *)SmpcInternalVars, internalsizev2, 1, fp);
   else
      yread(&check, (void *)SmpcInternalVars, sizeof(SmpcInternal), 1, fp);



   return size;
}
