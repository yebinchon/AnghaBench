
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; scalar_t__ opsz; int adrmode0; int line; } ;


 int MODE_AN ;
 TYPE_1__ d ;
 int desa_dn_ae (char) ;

__attribute__((used)) static int check_desa_add_sub(void)
{
  int modemsk = !(d.w&0400) ? 07777 : 00774;
  if(d.opsz==0)
    modemsk &= ~(1<<MODE_AN);
  if(!(modemsk & (1<<d.adrmode0)))
    return 0;
  desa_dn_ae (d.line==0xD ? 'ADD' : 'SUB');
  return 1;
}
