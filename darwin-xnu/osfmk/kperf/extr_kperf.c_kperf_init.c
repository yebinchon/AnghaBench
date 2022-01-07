
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lck_grp_attr_t ;
struct TYPE_2__ {unsigned int logical_cpu_max; } ;


 int ENOMEM ;
 scalar_t__ TRUE ;
 int VM_KERN_MEMORY_DIAG ;
 int bzero (int *,unsigned int) ;
 unsigned int intr_samplec ;
 int * intr_samplev ;
 int * kalloc_tag (unsigned int,int ) ;
 int kfree (int *,unsigned int) ;
 scalar_t__ kperf_initted ;
 int kperf_kdebug_init () ;
 int kperf_lck_grp ;
 int * kperf_tid_on_cpus ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 TYPE_1__ machine_info ;

int
kperf_init(void)
{
 static lck_grp_attr_t lck_grp_attr;

 unsigned ncpus = 0;
 int err;

 if (kperf_initted) {
  return 0;
 }

 lck_grp_attr_setdefault(&lck_grp_attr);
 lck_grp_init(&kperf_lck_grp, "kperf", &lck_grp_attr);

 ncpus = machine_info.logical_cpu_max;


 kperf_tid_on_cpus = kalloc_tag(ncpus * sizeof(*kperf_tid_on_cpus),
                                   VM_KERN_MEMORY_DIAG);
 if (kperf_tid_on_cpus == ((void*)0)) {
  err = ENOMEM;
  goto error;
 }
 bzero(kperf_tid_on_cpus, ncpus * sizeof(*kperf_tid_on_cpus));


 intr_samplec = ncpus;
 intr_samplev = kalloc_tag(ncpus * sizeof(*intr_samplev),
                           VM_KERN_MEMORY_DIAG);
 if (intr_samplev == ((void*)0)) {
  err = ENOMEM;
  goto error;
 }
 bzero(intr_samplev, ncpus * sizeof(*intr_samplev));


 if ((err = kperf_kdebug_init())) {
  goto error;
 }

 kperf_initted = TRUE;
 return 0;

error:
 if (intr_samplev) {
  kfree(intr_samplev, ncpus * sizeof(*intr_samplev));
  intr_samplev = ((void*)0);
  intr_samplec = 0;
 }

 if (kperf_tid_on_cpus) {
  kfree(kperf_tid_on_cpus, ncpus * sizeof(*kperf_tid_on_cpus));
  kperf_tid_on_cpus = ((void*)0);
 }

 return err;
}
