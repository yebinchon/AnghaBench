
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opsz; int adrmode0; char szchar; int w; char reg9; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int get_ea_2 (int ,int ,char) ;

__attribute__((used)) static int check_desa_cmpa()
{
  int modemsk = 07777;
  if(d.opsz!=3 || !(modemsk&(1<<d.adrmode0)))
    return 0;

  d.szchar=(d.w&0400) ? '.L' : '.W';
  desa_ascii('CMPA');
  desa_ascii(d.szchar);
  desa_char (' ');
  get_ea_2 (d.mode3, d.reg0, d.szchar);
  desa_ascii(',A0'+d.reg9);
  return 1;
}
