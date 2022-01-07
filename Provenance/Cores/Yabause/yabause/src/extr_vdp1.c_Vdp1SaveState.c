
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 int Vdp1FrameBufferReadByte (int) ;
 scalar_t__ Vdp1Ram ;
 scalar_t__ Vdp1Regs ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

int Vdp1SaveState(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };





   offset = StateWriteHeader(fp, "VDP1", 1);


   ywrite(&check, (void *)Vdp1Regs, sizeof(Vdp1), 1, fp);


   ywrite(&check, (void *)Vdp1Ram, 0x80000, 1, fp);







   return StateFinishHeader(fp, offset);
}
