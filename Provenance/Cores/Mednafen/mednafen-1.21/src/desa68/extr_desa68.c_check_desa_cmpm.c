
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; char reg0; int reg9; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;

__attribute__((used)) static int check_desa_cmpm()
{
  if((d.w&0470)!=0410 )
    return 0;
  desa_ascii('CMPM');
  desa_ascii(' (A0' + d.reg0);
  desa_ascii(')+,(');
  desa_ascii('A0)+' + (d.reg9<<16));
  return 1;
}
