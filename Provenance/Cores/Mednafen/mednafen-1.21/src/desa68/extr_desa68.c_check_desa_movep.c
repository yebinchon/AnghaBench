
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int opsz; char reg9; int reg0; } ;


 int MODE_dAN ;
 TYPE_1__ d ;
 int desa_ascii (char) ;
 int desa_str (char*) ;
 int get_ea_2 (int ,int ,int ) ;

__attribute__((used)) static int check_desa_movep(void)
{
  if((d.w & 0470) != 0410 )
    return 0;

  desa_str("MOVEP.");
  desa_ascii((d.opsz&1)?'L ' : 'W ');


  if(!(d.w&(1<<7)))
    {
      get_ea_2(MODE_dAN, d.reg0, 0 );
      desa_ascii(',D0' + d.reg9 );
    }

  else
    {
      desa_ascii('D0,' + (d.reg9<<8) );
      get_ea_2(MODE_dAN, d.reg0, 0 );
    }
  return 1;
}
