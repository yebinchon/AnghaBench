
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;
typedef int FILE ;


 int ANTIC_XPOS ;
 int ANTIC_ypos ;
 int CPU_D_FLAG ;
 int CPU_I_FLAG ;
 int CPU_regP ;
 int fprintf (int *,char*,int,int,int,int,int,int,char,char,char,char,char,char) ;
 int show_instruction (int *,int ) ;

void MONITOR_ShowState(FILE *fp, UWORD pc, UBYTE a, UBYTE x, UBYTE y, UBYTE s,
                char n, char v, char z, char c)
{
 fprintf(fp, "%3d %3d A=%02X X=%02X Y=%02X S=%02X P=%c%c*-%c%c%c%c PC=",
  ANTIC_ypos, ANTIC_XPOS, a, x, y, s,
  n, v, (CPU_regP & CPU_D_FLAG) ? 'D' : '-', (CPU_regP & CPU_I_FLAG) ? 'I' : '-', z, c);
 show_instruction(fp, pc);
}
