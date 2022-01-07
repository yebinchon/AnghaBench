
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; unsigned int szchar; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (unsigned int) ;
 int desa_char (char) ;
 int get_ea_2 (int ,int ,unsigned int) ;

__attribute__((used)) static int desa_check_imp(unsigned int name, int mskmode)
{
  if((d.w&0400) || !(mskmode&(1<<d.adrmode0)))
    return 0;
  desa_ascii(name);
  desa_ascii(d.szchar);
  desa_char (' ');
  get_ea_2(d.mode3, d.reg0, d.szchar);
  return 1;
}
