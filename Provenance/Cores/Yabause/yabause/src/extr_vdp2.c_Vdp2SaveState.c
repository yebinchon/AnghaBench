
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vdp2Internal_struct ;
typedef int Vdp2 ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 scalar_t__ Vdp2ColorRam ;
 int Vdp2Internal ;
 scalar_t__ Vdp2Ram ;
 scalar_t__ Vdp2Regs ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

int Vdp2SaveState(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };

   offset = StateWriteHeader(fp, "VDP2", 1);


   ywrite(&check, (void *)Vdp2Regs, sizeof(Vdp2), 1, fp);


   ywrite(&check, (void *)Vdp2Ram, 0x80000, 1, fp);


   ywrite(&check, (void *)Vdp2ColorRam, 0x1000, 1, fp);


   ywrite(&check, (void *)&Vdp2Internal, sizeof(Vdp2Internal_struct), 1, fp);

   return StateFinishHeader(fp, offset);
}
