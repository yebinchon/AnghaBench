
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef TYPE_3__* pmap_t ;
typedef int pcid_t ;
struct TYPE_9__ {int * pmap_pcid_cpus; int pagezero_accessible; } ;
struct TYPE_7__ {int specFlags; } ;
struct TYPE_8__ {TYPE_1__ machine; } ;


 int CopyIOActive ;
 scalar_t__ __improbable (int ) ;
 TYPE_3__* kernel_pmap ;

pcid_t pcid_for_pmap_cpu_tuple(pmap_t cpmap, thread_t cthread, int ccpu) {
 pmap_t active_pmap = cpmap;

 if (__improbable(cpmap->pagezero_accessible)) {
  if ((cthread->machine.specFlags & CopyIOActive) == 0) {
   active_pmap = kernel_pmap;
  }
 }

 return active_pmap->pmap_pcid_cpus[ccpu];
}
