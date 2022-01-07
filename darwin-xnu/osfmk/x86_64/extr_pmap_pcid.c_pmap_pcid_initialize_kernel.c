
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int pcid_t ;
struct TYPE_3__ {scalar_t__* pmap_pcid_cpus; } ;



void pmap_pcid_initialize_kernel(pmap_t p) {
 unsigned i;
 unsigned nc = sizeof(p->pmap_pcid_cpus)/sizeof(pcid_t);

 for (i = 0; i < nc; i++) {
  p->pmap_pcid_cpus[i] = 0;



 }
}
