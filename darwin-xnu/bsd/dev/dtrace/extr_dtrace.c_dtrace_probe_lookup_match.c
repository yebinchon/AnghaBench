
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtpr_id; } ;
typedef TYPE_1__ dtrace_probe_t ;
typedef int dtrace_id_t ;


 int DTRACE_MATCH_DONE ;

__attribute__((used)) static int
dtrace_probe_lookup_match(dtrace_probe_t *probe, void *arg1, void *arg2)
{
#pragma unused(arg2)
 *((dtrace_id_t *)arg1) = probe->dtpr_id;

 return (DTRACE_MATCH_DONE);
}
