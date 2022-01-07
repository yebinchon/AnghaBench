
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_12__ {scalar_t__ (* GetPC ) (TYPE_3__*) ;} ;
struct TYPE_10__ {scalar_t__ PC; } ;
struct TYPE_9__ {void (* callBack ) (void*,u32,void*) ;int enabled; scalar_t__ address; int type; } ;
struct TYPE_11__ {scalar_t__ cycles; TYPE_2__ regs; TYPE_1__ stepOverOut; } ;
typedef TYPE_3__ SH2_struct ;


 int MappedMemoryReadWord (scalar_t__) ;
 TYPE_8__* SH2Core ;
 int SH2Exec (TYPE_3__*,scalar_t__) ;
 int SH2ST_STEPOVER ;
 scalar_t__ stub1 (TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_3__*) ;

int SH2StepOver(SH2_struct *context, void (*func)(void *, u32, void *))
{
   if (SH2Core)
   {
      u32 tmp = SH2Core->GetPC(context);
      u16 inst=MappedMemoryReadWord(context->regs.PC);


      if ((inst & 0xF000) == 0xB000 ||
         (inst & 0xF0FF) == 0x0003 ||
         (inst & 0xF0FF) == 0x400B)
      {

         context->stepOverOut.callBack = func;
         context->stepOverOut.type = SH2ST_STEPOVER;
         context->stepOverOut.enabled = 1;
         context->stepOverOut.address = context->regs.PC+4;
         return 1;
      }
      else
      {

         SH2Exec(context, context->cycles+1);



         if (tmp == SH2Core->GetPC(context))
            SH2Exec(context, context->cycles+1);
      }
   }
   return 0;
}
