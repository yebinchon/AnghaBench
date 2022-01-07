
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opsz; char szchar; int w; int line; char reg9; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int get_ea_2 (int ,int ,char) ;

__attribute__((used)) static int check_desa_adda_suba(void)
{
  if(d.opsz!=3)
    return 0;

  d.szchar = (d.w&0400) ? '.L' : '.W';
  desa_ascii((d.line==0xD) ? 'ADDA' : 'SUBA');
  desa_ascii(d.szchar);
  desa_char (' ');
  get_ea_2(d.mode3, d.reg0, d.szchar);
  desa_ascii(',A0'+d.reg9);
  return 1;
}
