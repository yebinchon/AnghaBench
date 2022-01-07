
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prof_cyclic; scalar_t__ prof_kind; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int profile_probe_percpu_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 scalar_t__ CYCLIC_NONE ;
 int NCPU ;
 scalar_t__ PROF_TICK ;
 int atomic_add_32 (int*,int) ;
 int kmem_free (TYPE_1__*,int) ;
 int profile_total ;

__attribute__((used)) static void
profile_destroy(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 profile_probe_t *prof = parg;

 ASSERT(prof->prof_cyclic == CYCLIC_NONE);

 if (prof->prof_kind == PROF_TICK)
  kmem_free(prof, sizeof (profile_probe_t));
 else
  kmem_free(prof, sizeof (profile_probe_t) + NCPU*sizeof(profile_probe_percpu_t));

 ASSERT(profile_total >= 1);
 atomic_add_32(&profile_total, -1);
}
