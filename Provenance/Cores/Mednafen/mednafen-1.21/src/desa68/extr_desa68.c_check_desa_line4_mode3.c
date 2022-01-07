
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode6; int reg9; int adrmode0; int w; int status; int branch; int szchar; int reg0; int mode3; } ;


 int DESA68_INST ;
 int DESA68_INT ;
 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int desa_check_imp (char,int) ;
 int get_ea_2 (int ,int ,char) ;

__attribute__((used)) static int check_desa_line4_mode3(void)
{
  if (d.mode6 != 3) {
    return 0;
  }

  switch(d.reg9)
    {

    case 0:
      {
 int modemsk = 00775;
 if(!(modemsk&(1<<d.adrmode0)))
   break;
 desa_ascii('MOVE');
 desa_ascii(' SR,');
 get_ea_2(d.mode3, d.reg0, 'W');
 return 1;
      }

    case 1:
      break;

    case 2:
      {
 int modemsk = 07775;
 if(!(modemsk&(1<<d.adrmode0)))
   break;
 desa_ascii('MOVE');
 desa_char (' ');
 get_ea_2(d.mode3, d.reg0, 'B');
 desa_ascii(',CCR');
 return 1;
      }

    case 3:
      {
 int modemsk = 07775;
 if(!(modemsk&(1<<d.adrmode0)))
   break;
 desa_ascii('MOVE');
 desa_char (' ');
 get_ea_2(d.mode3, d.reg0, 'W');
 desa_ascii(',SR');
 return 1;
      }

    case 4:
      break;

    case 5:
      {
 d.szchar = 0;
 if(desa_check_imp('TAS', 00775)) {
   return 1;
 } else if(d.w == 0x4AFC) {
   desa_ascii('ILLE');
   desa_ascii('GAL');
   d.status = DESA68_INST | DESA68_INT;
   d.branch = 0x10;
   return 1;
 }
      }
      break;

    case 6:
      break;

    case 7:
      break;
    }
  return 0;
}
