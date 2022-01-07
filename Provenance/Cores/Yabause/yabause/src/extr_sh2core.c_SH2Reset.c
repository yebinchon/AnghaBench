
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int interrupt_struct ;
struct TYPE_20__ {scalar_t__ numbacktrace; } ;
struct TYPE_19__ {int isinterval; int shift; scalar_t__ leftover; scalar_t__ isenable; } ;
struct TYPE_18__ {int shift; scalar_t__ leftover; } ;
struct TYPE_21__ {int delay; TYPE_3__ bt; scalar_t__ interrupts; TYPE_2__ wdt; TYPE_1__ frc; scalar_t__ isIdle; scalar_t__ cycles; } ;
struct TYPE_17__ {int (* Reset ) (TYPE_4__*) ;int (* SetInterrupts ) (TYPE_4__*,int ,scalar_t__) ;int (* SetPR ) (TYPE_4__*,int) ;int (* SetMACL ) (TYPE_4__*,int) ;int (* SetMACH ) (TYPE_4__*,int) ;int (* SetVBR ) (TYPE_4__*,int) ;int (* SetGBR ) (TYPE_4__*,int) ;int (* SetSR ) (TYPE_4__*,int) ;int (* SetGPR ) (TYPE_4__*,int,int) ;} ;
typedef TYPE_4__ SH2_struct ;


 int MAX_INTERRUPTS ;
 int OnchipReset (TYPE_4__*) ;
 TYPE_15__* SH2Core ;
 int memset (void*,int ,int) ;
 int stub1 (TYPE_4__*,int,int) ;
 int stub2 (TYPE_4__*,int) ;
 int stub3 (TYPE_4__*,int) ;
 int stub4 (TYPE_4__*,int) ;
 int stub5 (TYPE_4__*,int) ;
 int stub6 (TYPE_4__*,int) ;
 int stub7 (TYPE_4__*,int) ;
 int stub8 (TYPE_4__*,int ,scalar_t__) ;
 int stub9 (TYPE_4__*) ;

void SH2Reset(SH2_struct *context)
{
   int i;


   for (i = 0; i < 15; i++)
      SH2Core->SetGPR(context, i, 0x00000000);

   SH2Core->SetSR(context, 0x000000F0);
   SH2Core->SetGBR(context, 0x00000000);
   SH2Core->SetVBR(context, 0x00000000);
   SH2Core->SetMACH(context, 0x00000000);
   SH2Core->SetMACL(context, 0x00000000);
   SH2Core->SetPR(context, 0x00000000);


   context->delay = 0x00000000;
   context->cycles = 0;
   context->isIdle = 0;

   context->frc.leftover = 0;
   context->frc.shift = 3;

   context->wdt.isenable = 0;
   context->wdt.isinterval = 1;
   context->wdt.shift = 1;
   context->wdt.leftover = 0;


   memset((void *)context->interrupts, 0, sizeof(interrupt_struct) * MAX_INTERRUPTS);
   SH2Core->SetInterrupts(context, 0, context->interrupts);


   SH2Core->Reset(context);


   OnchipReset(context);


   context->bt.numbacktrace = 0;
}
