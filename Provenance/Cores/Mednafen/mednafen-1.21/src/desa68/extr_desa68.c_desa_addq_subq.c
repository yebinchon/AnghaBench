
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg9; int w; char szchar; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int get_ea_2 (int ,int ,char) ;

__attribute__((used)) static void desa_addq_subq()
{
  int v;
  v = d.reg9 * 256;
  if(v==0) v=8*256;
  desa_ascii((d.w&0400) ? 'SUBQ':'ADDQ');
  desa_ascii(d.szchar);
  desa_ascii(' #0,' + v);
  get_ea_2(d.mode3, d.reg0, d.szchar);
}
