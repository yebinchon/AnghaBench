
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; char reg9; int status; int branch; int reg0; int mode3; } ;


 int DESA68_INST ;
 int DESA68_INT ;
 TYPE_1__ d ;
 int desa_ascii (char) ;
 int get_ea_2 (int ,int ,int ) ;

__attribute__((used)) static int check_desa_chk()
{
  int modemsk = 07775;
  if((d.w&0700) != 0600 || !(modemsk&(1<<d.adrmode0)))
    return 0;
  desa_ascii('CHK ');
  get_ea_2(d.mode3, d.reg0, 0);
  desa_ascii(',D0'+d.reg9);
  d.status = DESA68_INST | DESA68_INT;
  d.branch = 0x18;
  return 1;
}
