
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int line; } ;


 TYPE_1__ d ;
 int desa_ry_rx (char,int ) ;

__attribute__((used)) static int check_desa_abcd_sbcd(void)
{
  if((d.w&0x1f0)!=0x100)
    return 0;
  desa_ry_rx((d.line==0xC) ? 'ABCD' : 'SBCD', 0) ;
  return 1;
}
