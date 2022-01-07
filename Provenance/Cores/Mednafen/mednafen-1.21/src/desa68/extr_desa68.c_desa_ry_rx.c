
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode3; char reg0; int reg9; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int desa_reg (char) ;

__attribute__((used)) static void desa_ry_rx(int inst, int size)
{
  desa_ascii(inst);
  desa_ascii(size);
  desa_char(' ');
  if(d.mode3&1)
    {
      desa_ascii('-(A0'+d.reg0);
      desa_ascii('),-(');
      desa_ascii('A0)' + (d.reg9<<8));
    }
  else
    {
      desa_reg(d.reg0);
      desa_char(',');
      desa_reg(d.reg9);
    }
}
