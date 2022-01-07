
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int scudspregs_struct ;
struct TYPE_5__ {scalar_t__ inbreakpoint; int * BreakpointCallBack; scalar_t__ numcodebreakpoints; TYPE_1__* codebreakpoint; } ;
typedef TYPE_2__ scubp_struct ;
struct TYPE_4__ {int addr; } ;
typedef int Scu ;


 int MAX_BREAKPOINTS ;
 TYPE_2__* ScuBP ;
 int * ScuDsp ;
 int * ScuRegs ;
 scalar_t__ calloc (int,int) ;

int ScuInit(void) {
   int i;

   if ((ScuRegs = (Scu *) calloc(1, sizeof(Scu))) == ((void*)0))
      return -1;

   if ((ScuDsp = (scudspregs_struct *) calloc(1, sizeof(scudspregs_struct))) == ((void*)0))
      return -1;

   if ((ScuBP = (scubp_struct *) calloc(1, sizeof(scubp_struct))) == ((void*)0))
      return -1;

   for (i = 0; i < MAX_BREAKPOINTS; i++)
      ScuBP->codebreakpoint[i].addr = 0xFFFFFFFF;
   ScuBP->numcodebreakpoints = 0;
   ScuBP->BreakpointCallBack=((void*)0);
   ScuBP->inbreakpoint=0;

   return 0;
}
