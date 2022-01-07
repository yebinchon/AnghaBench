
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int szchar; int reg0; int mode3; } ;


 TYPE_1__ d ;
 int desa_ascii (char) ;
 int get_ea_2 (int ,int ,int ) ;
 int* scc_ascii ;

__attribute__((used)) static void desa_Scc()
{
  desa_ascii(('S'<<24) + ' ' + scc_ascii[(d.w>>8)&15]*256);
  get_ea_2(d.mode3, d.reg0, d.szchar);
}
