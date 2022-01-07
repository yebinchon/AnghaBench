
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {int psa_darwin_role; } ;


 int EINVAL ;

int posix_spawnattr_set_darwin_role_np(const posix_spawnattr_t * __restrict attr, uint64_t darwin_role)
{
 _posix_spawnattr_t psattr;

 if (attr == ((void*)0) || *attr == ((void*)0)) {
  return EINVAL;
 }

 psattr = *(_posix_spawnattr_t *)attr;
 psattr->psa_darwin_role = darwin_role;

 return 0;
}
