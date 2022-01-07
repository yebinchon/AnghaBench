
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; int line; char reg9; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int get_ea_2 (int ,int ,char) ;

__attribute__((used)) static int check_desa_mul_div(void)
{
  int modemsk = 0xFFD;
  if((d.w&0300)!=0300 || !(modemsk&(1<<d.adrmode0)))
    return 0;
  desa_ascii((d.line==0xC) ? 'MUL' : 'DIV');
  desa_ascii((d.w&0x100) ? 'S ' : 'U ');
  get_ea_2 (d.mode3, d.reg0, 'W');
  desa_ascii(',D0'+d.reg9);
  return 1;
}
