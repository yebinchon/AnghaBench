
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probe_t ;
typedef int dtrace_id_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_lock ;
 scalar_t__ dtrace_nprobes ;
 int ** dtrace_probes ;

__attribute__((used)) static dtrace_probe_t *
dtrace_probe_lookup_id(dtrace_id_t id)
{
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (id == 0 || id > (dtrace_id_t)dtrace_nprobes)
  return (((void*)0));

 return (dtrace_probes[id - 1]);
}
