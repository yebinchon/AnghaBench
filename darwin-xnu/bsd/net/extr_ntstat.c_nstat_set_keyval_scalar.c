
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int nstat_sysinfo_scalar; } ;
struct TYPE_5__ {int nstat_sysinfo_key; int nstat_sysinfo_valsize; TYPE_1__ u; int nstat_sysinfo_flags; } ;
typedef TYPE_2__ nstat_sysinfo_keyval ;


 int NSTAT_SYSINFO_FLAG_SCALAR ;

__attribute__((used)) static void
nstat_set_keyval_scalar(nstat_sysinfo_keyval *kv, int key, u_int32_t val)
{
 kv->nstat_sysinfo_key = key;
 kv->nstat_sysinfo_flags = NSTAT_SYSINFO_FLAG_SCALAR;
 kv->u.nstat_sysinfo_scalar = val;
 kv->nstat_sysinfo_valsize = sizeof(kv->u.nstat_sysinfo_scalar);
}
