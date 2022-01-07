
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dtpr_provider; } ;
typedef TYPE_2__ dtrace_probe_t ;
struct TYPE_3__ {char const* dtpv_name; } ;



__attribute__((used)) static const char*
dtrace_strkey_probe_provider(void *elm, uintptr_t offs)
{
#pragma unused(offs)
 dtrace_probe_t *probe = (dtrace_probe_t*)elm;
 return probe->dtpr_provider->dtpv_name;
}
