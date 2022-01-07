
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; unsigned int immsym_min; unsigned int immsym_max; } ;


 int DESA68_SYMBOL_FLAG ;
 TYPE_1__ d ;
 int desa_ascii (int ) ;
 int desa_char (char) ;
 scalar_t__ desa_isascii (unsigned int) ;
 int desa_label (unsigned int) ;
 int desa_signifiant (int) ;
 int update_ea (unsigned int) ;

__attribute__((used)) static void desa_immL(int v)
{
  unsigned int v2 = v;
  desa_char('#');
  if ((d.flags&DESA68_SYMBOL_FLAG) && v2>=d.immsym_min && v2<d.immsym_max) {
    desa_label(v2);
    update_ea(v2);
  } else {
    if(desa_isascii(v2) && desa_isascii(v2>>8) && desa_isascii(v2>>16) && desa_isascii(v2>>24)) {
      desa_char ('\'');
      desa_ascii((u32)v2);
      desa_char ('\'');
    } else {
      desa_signifiant(v);
    }
  }
}
