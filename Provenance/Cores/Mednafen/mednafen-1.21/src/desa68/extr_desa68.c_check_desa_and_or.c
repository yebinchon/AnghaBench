
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int adrmode0; int line; } ;


 TYPE_1__ d ;
 int desa_dn_ae (char) ;

__attribute__((used)) static int check_desa_and_or(void)
{
  int modemsk = !(d.w&0400)? 0xFFD : 0x1FC;
  if(!(modemsk&(1<<d.adrmode0)))
    return 0;
  desa_dn_ae((d.line==0xC)? 'AND' : 'OR');
  return 1;
}
