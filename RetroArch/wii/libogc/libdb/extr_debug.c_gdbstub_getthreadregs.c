
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_6__ {int FPSCR; int XER; int CTR; int LR; int CR; int MSR; int FPR; int GPR; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
typedef TYPE_2__ lwp_cntrl ;
struct TYPE_8__ {int FPSCR; int XER; int CTR; int LR; int CR; int SRR1; int SRR0; int FPR; int GPR; } ;
typedef TYPE_3__ frame_context ;


 TYPE_2__* gdbstub_indextoid (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static s32 gdbstub_getthreadregs(s32 thread,frame_context *frame)
{
 lwp_cntrl *th;

 th = gdbstub_indextoid(thread);
 if(th) {
  memcpy(frame->GPR,th->context.GPR,(32*4));
  memcpy(frame->FPR,th->context.FPR,(32*8));
  frame->SRR0 = th->context.LR;
  frame->SRR1 = th->context.MSR;
  frame->CR = th->context.CR;
  frame->LR = th->context.LR;
  frame->CTR = th->context.CTR;
  frame->XER = th->context.XER;
  frame->FPSCR = th->context.FPSCR;
  return 1;
 }
 return 0;
}
