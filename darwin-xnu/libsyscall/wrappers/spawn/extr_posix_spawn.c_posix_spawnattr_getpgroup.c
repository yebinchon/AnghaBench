
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef int pid_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {int psa_pgroup; } ;


 int EINVAL ;

int
posix_spawnattr_getpgroup(const posix_spawnattr_t * __restrict attr,
  pid_t * __restrict pgroup)
{
 _posix_spawnattr_t psattr;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 *pgroup = psattr->psa_pgroup;

 return (0);
}
