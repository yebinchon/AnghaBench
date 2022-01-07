
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PC; int SR; int * A; int * D; } ;
typedef TYPE_1__ m68kregs_struct ;
struct TYPE_5__ {int (* GetPC ) () ;int (* GetSR ) () ;int (* GetAReg ) (int) ;int (* GetDReg ) (int) ;} ;


 TYPE_3__* M68K ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 () ;
 int stub4 () ;

void
M68KGetRegisters (m68kregs_struct *regs)
{
  int i;

  if (regs != ((void*)0))
    {
      for (i = 0; i < 8; i++)
        {
          regs->D[i] = M68K->GetDReg (i);
          regs->A[i] = M68K->GetAReg (i);
        }

      regs->SR = M68K->GetSR ();
      regs->PC = M68K->GetPC ();
    }
}
