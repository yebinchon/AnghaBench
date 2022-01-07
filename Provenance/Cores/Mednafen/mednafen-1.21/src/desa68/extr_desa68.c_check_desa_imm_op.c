
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u32 ;
struct TYPE_2__ {int w; int reg9; int opsz; int szchar; scalar_t__ reg0; scalar_t__ mode3; } ;


 scalar_t__ MODE_ABSW ;
 scalar_t__ MODE_IMM ;
 TYPE_1__ d ;
 int desa_ascii (int) ;
 int desa_char (char) ;
 int get_ea_2 (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int check_desa_imm_op(void)
{
  static u32 fn[8] =
    {
      'ORI' , 'ANDI', 'SUBI', 'ADDI',
      '???I', 'EORI', 'CMPI', '???I'
    };
  int modemsk=0x6F;

  if((d.w&0x100) || !(modemsk&(1<<d.reg9)) || d.opsz==3)
    return 0;

  desa_ascii(fn[d.reg9] );
  desa_ascii((d.szchar<<8) + ' ');
  get_ea_2(MODE_ABSW, MODE_IMM-MODE_ABSW, d.szchar);
  desa_char(',');
  get_ea_2(d.mode3, d.reg0, d.szchar);
  return 1;
}
