
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int pcid_t ;
struct TYPE_3__ {int * pmap_pcid_cpus; } ;


 int PMAP_PCID_INVALID_PCID ;
 int pmap_assert (int) ;
 unsigned int real_ncpus ;

void pmap_pcid_initialize(pmap_t p) {
 unsigned i;
 unsigned nc = sizeof(p->pmap_pcid_cpus)/sizeof(pcid_t);

 pmap_assert(nc >= real_ncpus);
 for (i = 0; i < nc; i++) {
  p->pmap_pcid_cpus[i] = PMAP_PCID_INVALID_PCID;



 }
}
