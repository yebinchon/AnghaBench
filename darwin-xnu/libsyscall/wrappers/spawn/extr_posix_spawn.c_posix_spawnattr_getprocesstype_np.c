
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {int psa_apptype; } ;


 int EINVAL ;

int
posix_spawnattr_getprocesstype_np(const posix_spawnattr_t * __restrict attr,
  int * __restrict proctype)
{
 _posix_spawnattr_t psattr;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 *proctype = psattr->psa_apptype;

 return (0);
}
