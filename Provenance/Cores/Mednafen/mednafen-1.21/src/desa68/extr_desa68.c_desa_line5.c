
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int opsz; } ;


 TYPE_1__ d ;
 int desa_Dcc () ;
 int desa_Scc () ;
 int desa_addq_subq () ;

__attribute__((used)) static void desa_line5(void)
{
  if((d.w&0370)==0310) {
    desa_Dcc();
  } else if(d.opsz==3) {
    desa_Scc();
  } else {
    desa_addq_subq();
  }
}
