
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; unsigned int immsym_min; unsigned int immsym_max; } ;


 int DESA68_SYMBOL_FLAG ;
 TYPE_1__ d ;
 int desa_str (char*) ;
 int desa_uhexacat (unsigned int,int,char) ;
 int desa_usignifiant (int) ;

__attribute__((used)) static void desa_absL(int v)
{
  unsigned int v2 = v & 0xFFFFFF;

  if ((d.flags&DESA68_SYMBOL_FLAG) && v2>=d.immsym_min && v2<d.immsym_max) {
    desa_uhexacat(v2, 6, 'L');
  } else {
    desa_usignifiant(v);
    desa_str(".L");
  }
}
