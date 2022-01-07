
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int line; int szchar; } ;


 TYPE_1__ d ;
 int desa_ry_rx (char,int ) ;

__attribute__((used)) static int check_desa_addx_subx()
{
  if((d.w&0460)!=0400 )
    return 0;
  desa_ry_rx((d.line==0xD) ? 'ADDX' : 'SUBX', d.szchar);
  return 1;
}
