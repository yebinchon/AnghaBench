
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef int cpu_type_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {int * psa_binprefs; } ;


 int EINVAL ;

int
posix_spawnattr_getbinpref_np(const posix_spawnattr_t * __restrict attr,
  size_t count, cpu_type_t *pref, size_t * __restrict ocount)
{
 _posix_spawnattr_t psattr;
 int i = 0;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 for (i = 0; i < count && i < 4; i++) {
  pref[i] = psattr->psa_binprefs[i];
 }

 if (ocount)
  *ocount = i;
 return 0;
}
