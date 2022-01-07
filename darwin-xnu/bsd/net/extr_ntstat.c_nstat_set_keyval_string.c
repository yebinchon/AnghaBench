
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct TYPE_4__ {int nstat_sysinfo_string; } ;
struct TYPE_5__ {int nstat_sysinfo_key; int nstat_sysinfo_valsize; TYPE_1__ u; int nstat_sysinfo_flags; } ;
typedef TYPE_2__ nstat_sysinfo_keyval ;


 int NSTAT_SYSINFO_FLAG_STRING ;
 int NSTAT_SYSINFO_KEYVAL_STRING_MAXSIZE ;
 int bcopy (int *,int ,int ) ;
 int min (int ,int ) ;

__attribute__((used)) static void
nstat_set_keyval_string(nstat_sysinfo_keyval *kv, int key, u_int8_t *buf,
    u_int32_t len)
{
 kv->nstat_sysinfo_key = key;
 kv->nstat_sysinfo_flags = NSTAT_SYSINFO_FLAG_STRING;
 kv->nstat_sysinfo_valsize = min(len,
     NSTAT_SYSINFO_KEYVAL_STRING_MAXSIZE);
 bcopy(buf, kv->u.nstat_sysinfo_string, kv->nstat_sysinfo_valsize);
}
