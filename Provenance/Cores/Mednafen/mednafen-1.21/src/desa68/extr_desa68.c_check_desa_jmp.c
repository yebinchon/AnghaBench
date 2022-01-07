
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; int opsz; int status; int ea; int branch; int szchar; int reg0; int mode3; } ;


 int DESA68_BRA ;
 int DESA68_BSR ;
 int DESA68_INST ;
 TYPE_1__ d ;
 int desa_ascii (int) ;
 int desa_char (char) ;
 int desa_dcw () ;
 int get_ea_2 (int ,int ,int ) ;

__attribute__((used)) static int check_desa_jmp()
{
  int modemsk = 03744;
  if((d.w&07600) != 07200) {
    return 0;
  }

  if(modemsk & (1<<d.adrmode0)) {
    int s = 'MP ', stat = DESA68_INST | DESA68_BRA;
    desa_char('J');
    if (d.opsz==2) {
      stat = DESA68_INST | DESA68_BRA | DESA68_BSR;
      s = 'SR ';
    }
    d.status = stat;
    desa_ascii(s);
    get_ea_2(d.mode3, d.reg0, d.szchar);
    d.branch = d.ea;

    return 1;
  }


  desa_dcw();
  return 1;

}
