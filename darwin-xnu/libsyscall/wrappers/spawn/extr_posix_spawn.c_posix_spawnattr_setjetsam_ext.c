
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {short psa_jetsam_flags; int psa_priority; int psa_memlimit_active; int psa_memlimit_inactive; } ;


 int EINVAL ;
 short POSIX_SPAWN_JETSAM_SET ;

int
posix_spawnattr_setjetsam_ext(posix_spawnattr_t * __restrict attr,
 short flags, int priority, int memlimit_active, int memlimit_inactive)
{
 _posix_spawnattr_t psattr;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;

 psattr->psa_jetsam_flags = flags;
 psattr->psa_jetsam_flags |= POSIX_SPAWN_JETSAM_SET;
 psattr->psa_priority = priority;
 psattr->psa_memlimit_active = memlimit_active;
 psattr->psa_memlimit_inactive = memlimit_inactive;

 return (0);
}
