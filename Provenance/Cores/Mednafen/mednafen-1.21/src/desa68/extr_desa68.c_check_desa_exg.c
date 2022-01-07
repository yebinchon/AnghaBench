
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; scalar_t__ reg0; scalar_t__ reg9; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int desa_reg (scalar_t__) ;

__attribute__((used)) static int check_desa_exg()
{
  unsigned int reg;
  switch(d.w&0770)
    {
    case 0500:
      reg = 0x0000;
      break;
    case 0510:
      reg = 0x0808;
      break;
    case 0610:
      reg = 0x0008;
      break;
    default:
      return 0;
    }
  desa_ascii('EXG ');
  desa_reg(d.reg9 + (reg>>8));
  desa_char (',');
  desa_reg(d.reg0 + (reg&8));
  return 1;
}
