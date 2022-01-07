
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FBCR; } ;
typedef TYPE_1__ Vdp1 ;


 int vdp1interlace ;

__attribute__((used)) static int CheckDil(int y, Vdp1 * regs)
{
   int dil = (regs->FBCR >> 2) & 1;

   if (vdp1interlace == 2)
   {
      if (dil)
      {
         if ((y & 1) == 0)
            return 1;
      }
      else
      {
         if ((y & 1))
            return 1;
      }
   }

   return 0;
}
