
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int sh2regs_struct ;
typedef int interrupt_struct ;
struct TYPE_14__ {int (* GetInterrupts ) (TYPE_2__*,scalar_t__) ;} ;
struct TYPE_13__ {int IsSSH2Running; } ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_10__ {int shift; } ;
struct TYPE_11__ {scalar_t__ isslave; int instruction; int isIdle; int cycles; int delay; scalar_t__ DataArray; scalar_t__ AddressArray; int NumberOfInterrupts; scalar_t__ interrupts; TYPE_1__ frc; int onchip; } ;
typedef TYPE_2__ SH2_struct ;
typedef int Onchip_struct ;
typedef TYPE_3__ IOCheck_struct ;
typedef int FILE ;


 int MAX_INTERRUPTS ;
 TYPE_9__* SH2Core ;
 int SH2GetRegisters (TYPE_2__*,int *) ;
 int StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 int stub1 (TYPE_2__*,scalar_t__) ;
 TYPE_5__ yabsys ;
 int ywrite (TYPE_3__*,void*,int,int,int *) ;

int SH2SaveState(SH2_struct *context, FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };
   sh2regs_struct regs;


   if (context->isslave == 0)
      offset = StateWriteHeader(fp, "MSH2", 1);
   else
   {
      offset = StateWriteHeader(fp, "SSH2", 1);
      ywrite(&check, (void *)&yabsys.IsSSH2Running, 1, 1, fp);
   }


   SH2GetRegisters(context, &regs);
   ywrite(&check, (void *)&regs, sizeof(sh2regs_struct), 1, fp);


   ywrite(&check, (void *)&context->onchip, sizeof(Onchip_struct), 1, fp);





   context->frc.shift = 1 << context->frc.shift;
   ywrite(&check, (void *)&context->frc, sizeof(context->frc), 1, fp);
   {
      u32 div = context->frc.shift;
      context->frc.shift = 0;
      while ((div >>= 1) != 0)
         context->frc.shift++;
   }
   context->NumberOfInterrupts = SH2Core->GetInterrupts(context, context->interrupts);
   ywrite(&check, (void *)context->interrupts, sizeof(interrupt_struct), MAX_INTERRUPTS, fp);
   ywrite(&check, (void *)&context->NumberOfInterrupts, sizeof(u32), 1, fp);
   ywrite(&check, (void *)context->AddressArray, sizeof(u32), 0x100, fp);
   ywrite(&check, (void *)context->DataArray, sizeof(u8), 0x1000, fp);
   ywrite(&check, (void *)&context->delay, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&context->cycles, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&context->isslave, sizeof(u8), 1, fp);
   ywrite(&check, (void *)&context->isIdle, sizeof(u8), 1, fp);
   ywrite(&check, (void *)&context->instruction, sizeof(u16), 1, fp);

   return StateFinishHeader(fp, offset);
}
