
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdp2draw_struct ;
typedef int Vdp2 ;


 int ReadVdp2ColorOffset (int *,int *,int,int) ;
 int * Vdp2RestoreRegs (int,int *) ;

__attribute__((used)) static void LoadLineParamsSprite(vdp2draw_struct * info, int line, Vdp2* lines)
{
   Vdp2 * regs;

   regs = Vdp2RestoreRegs(line, lines);
   if (regs == ((void*)0)) return;
   ReadVdp2ColorOffset(regs, info, 0x40, 0x40);
}
