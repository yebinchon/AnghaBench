
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* SetPC ) (int ) ;int (* SetSR ) (int ) ;int (* SetAReg ) (int,int ) ;int (* SetDReg ) (int,int ) ;} ;
struct TYPE_4__ {int PC; int SR; int * A; int * D; } ;
typedef TYPE_1__ M68KRegs ;


 TYPE_3__* M68K ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;

void M68KSetRegisters(const M68KRegs *regs)
{
   int i;

   if (regs != ((void*)0))
   {
      for (i = 0; i < 8; i++)
      {
         M68K->SetDReg(i, regs->D[i]);
         M68K->SetAReg(i, regs->A[i]);
      }
      M68K->SetSR(regs->SR);
      M68K->SetPC(regs->PC);
   }
}
