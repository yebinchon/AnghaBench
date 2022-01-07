
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; char reg9; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int get_ea_2 (int ,int ,int ) ;

__attribute__((used)) static int check_desa_lea()
{
  int modemsk = 03744;
  if((d.w&0700) != 0700 || !(modemsk&(1<<d.adrmode0)))
    return 0;
  desa_ascii('LEA ');
  get_ea_2(d.mode3, d.reg0, 0);
  desa_ascii(',A0'+d.reg9);
  return 1;
}
