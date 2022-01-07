
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char szchar; int w; int reg9; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int get_ea_2 (int ,int ,char) ;

__attribute__((used)) static void desa_dn_ae(int name)
{
  desa_ascii(name);
  desa_ascii(d.szchar);
  desa_char (' ');

  if(d.w&0400)
    {
      desa_ascii('D0,' + (d.reg9<<8));
      get_ea_2(d.mode3, d.reg0, d.szchar);
    }


  else
    {
      get_ea_2(d.mode3, d.reg0, d.szchar);
      desa_ascii(',D0'+d.reg9);
    }
}
