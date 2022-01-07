
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef char u32 ;
struct TYPE_2__ {int adrmode0; size_t opsz; int w; char reg9; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_char (char) ;
 int desa_usignifiant (int ) ;
 int get_ea_2 (int ,int ,char) ;
 int read_pc () ;

__attribute__((used)) static int check_desa_bitop(void)
{
  static u32 fn[] = { 'BTST', 'BCHG', 'BCLR', 'BSET'};
  int modemsk = 00775;
  unsigned int inst;

  if(!(modemsk&(1<<d.adrmode0)))
    return 0;

  inst = fn[d.opsz];

  if(!(d.w&0400))
    {
      if((d.w&0xF00)!=0x800)
 return 0;
      desa_ascii(inst);
      desa_ascii(' #');
      read_pc();
      desa_usignifiant((u8)d.w);
    }
  else

    {
      desa_ascii(inst);
      desa_ascii(' D0'+d.reg9);
    }
  desa_char(',');
  get_ea_2(d.mode3, d.reg0, 'B');

  return 1;
}
