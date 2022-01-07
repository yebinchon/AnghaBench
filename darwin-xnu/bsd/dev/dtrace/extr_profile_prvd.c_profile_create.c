
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prof_kind; int prof_id; int prof_cyclic; scalar_t__ prof_interval; int prof_name; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int profile_probe_percpu_t ;
typedef scalar_t__ hrtime_t ;


 int CYCLIC_NONE ;
 int KM_SLEEP ;
 int NCPU ;
 scalar_t__ PROF_ARTIFICIAL_FRAMES ;
 int PROF_TICK ;
 int atomic_add_32 (scalar_t__*,int) ;
 int dtrace_probe_create (int ,int *,int *,char const*,scalar_t__,TYPE_1__*) ;
 scalar_t__ dtrace_probe_lookup (int ,int *,int *,char const*) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 scalar_t__ profile_aframes ;
 int profile_id ;
 scalar_t__ profile_interval_min ;
 scalar_t__ profile_max ;
 scalar_t__ profile_total ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
profile_create(hrtime_t interval, const char *name, int kind)
{
 profile_probe_t *prof;

 if (interval < profile_interval_min)
  return;

 if (dtrace_probe_lookup(profile_id, ((void*)0), ((void*)0), name) != 0)
  return;

 atomic_add_32(&profile_total, 1);
 if (profile_total > profile_max) {
  atomic_add_32(&profile_total, -1);
  return;
 }

 if (PROF_TICK == kind)
  prof = kmem_zalloc(sizeof (profile_probe_t), KM_SLEEP);
 else
  prof = kmem_zalloc(sizeof (profile_probe_t) + NCPU*sizeof(profile_probe_percpu_t), KM_SLEEP);

 (void) strlcpy(prof->prof_name, name, sizeof(prof->prof_name));
 prof->prof_interval = interval;
 prof->prof_cyclic = CYCLIC_NONE;
 prof->prof_kind = kind;
 prof->prof_id = dtrace_probe_create(profile_id,
     ((void*)0), ((void*)0), name,
     profile_aframes ? profile_aframes : PROF_ARTIFICIAL_FRAMES, prof);
}
