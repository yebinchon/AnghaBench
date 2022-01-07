
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CMDPMOD; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int Vdp1 ;


 int IsSystemClipped (int,int,int *) ;
 int IsUserClipped (int,int,int *) ;

int IsClipped(int x, int y, Vdp1* regs, vdp1cmd_struct * cmd)
{
   if (cmd->CMDPMOD & 0x0400)
   {
      int is_user_clipped = IsUserClipped(x, y, regs);

      if (((cmd->CMDPMOD >> 9) & 0x3) == 0x3)
         is_user_clipped = !is_user_clipped;

      return is_user_clipped || IsSystemClipped(x, y, regs);
   }
   else
   {
      return IsSystemClipped(x, y, regs);
   }
}
