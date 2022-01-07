
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opsz; int w; int adrmode0; } ;


 TYPE_1__ d ;
 int desa_dn_ae (int) ;

__attribute__((used)) static int check_desa_eor_cmp()
{
  int modemsk, inst;

  if(d.opsz==3)
    return 0;


  else if(d.w&0400)
    {
      modemsk = 00775;
      inst = 'EOR';
    }


  else
    {
      modemsk = (!d.opsz) ? 07775 : 07777;
      inst = 'CMP';
    }

  if(!(modemsk&(1<<d.adrmode0)))
    return 0;

  desa_dn_ae(inst);
  return 1;
}
