
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_3__ {int * cd_shadow; } ;
typedef TYPE_1__ cpu_data_t ;


 int * cpshadows ;
 TYPE_1__* cpu_datap (int) ;

__attribute__((used)) static void cpu_shadow_sort(int ncpus) {
 for (int i = 0; i < ncpus; i++) {
  cpu_data_t *cpup = cpu_datap(i);
  ptrdiff_t coff = cpup - cpu_datap(0);

  cpup->cd_shadow = &cpshadows[coff];
 }
}
