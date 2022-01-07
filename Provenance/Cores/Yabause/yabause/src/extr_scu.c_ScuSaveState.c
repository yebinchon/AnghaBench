
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int scudspregs_struct ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef int Scu ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 scalar_t__ ScuDsp ;
 scalar_t__ ScuRegs ;
 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

int ScuSaveState(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };

   offset = StateWriteHeader(fp, "SCU ", 1);


   ywrite(&check, (void *)ScuRegs, sizeof(Scu), 1, fp);


   ywrite(&check, (void *)ScuDsp, sizeof(scudspregs_struct), 1, fp);

   return StateFinishHeader(fp, offset);
}
