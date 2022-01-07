
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; int mode3; int reg0; } ;


 int MODE_pAN ;
 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int get_ea_2 (int,int,int ) ;
 int get_movemreg (int,int) ;
 int immW () ;

__attribute__((used)) static int check_desa_movem()
{
  int modemsk, regmsk;
  int mode3, reg0, w;
  if((d.w&05600)!=04200)
    return 0;
  modemsk = !(d.w&02000) ? 00764 : 03754;
  if(!(modemsk&(1<<d.adrmode0)))
    return 0;

  desa_ascii('MOVE');
  desa_ascii('M.');
  desa_char (!(d.w&0100)?'W':'L');
  desa_char (' ');

  w = d.w;
  mode3 = d.mode3;
  reg0 = d.reg0;
  regmsk = immW();


  if(w&02000)
    {
      get_ea_2(mode3, reg0, 0);
      desa_char(',');
      get_movemreg(regmsk,0);
    }

  else
    {
      get_movemreg(regmsk, (mode3==MODE_pAN) ? 15 : 0);
      desa_char(',');
      get_ea_2(mode3, reg0, 0);
    }
  return 1;
}
