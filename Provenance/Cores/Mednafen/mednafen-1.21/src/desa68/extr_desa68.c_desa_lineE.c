
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u16 ;
struct TYPE_2__ {int opsz; int reg9; int adrmode0; int w; char reg0; char szchar; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int desa_dcw () ;
 int get_ea_2 (int ,char,int ) ;

__attribute__((used)) static void desa_lineE(void)
{
  static u16 shf_ascii[4] = { 'AS', 'LS', 'RO', 'RO' };


  if(d.opsz==3)
    {
      const int modemsk = 00774;
      int type = d.reg9;
      if (!(modemsk & (1<<d.adrmode0)) || (type&4)) {
 desa_dcw();
 return;
      }
      desa_ascii(shf_ascii[type]);
      desa_char ((d.w&0400) ? 'L' :'R');
      if(type==2) desa_char('X');
      desa_char (' ');
      get_ea_2(d.mode3, d.reg0, 0);
    }


  else
    {
      int type = (d.w>>3)&3;
      desa_ascii (shf_ascii[type]);
      desa_char ((d.w&0400) ? 'L' :'R');
      if(type==2) desa_char('X');
      desa_ascii(d.szchar);

      if(d.w&(1<<5))
 desa_ascii(' D0'+d.reg9);

      else
 desa_ascii(' #1'+((d.reg9-1)&7));
      desa_ascii(',D0'+d.reg0);
    }
}
