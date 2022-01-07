
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _posix_spawn_coalition_info {int dummy; } ;
typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {struct _posix_spawn_coalition_info* psa_coalition_info; } ;


 int EINVAL ;
 int free (struct _posix_spawn_coalition_info*) ;

__attribute__((used)) static int
posix_spawn_destroycoalition_info_np(posix_spawnattr_t *attr)
{
 _posix_spawnattr_t psattr;
 struct _posix_spawn_coalition_info *coal_info;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 coal_info = psattr->psa_coalition_info;
 if (coal_info == ((void*)0))
  return EINVAL;

 psattr->psa_coalition_info = ((void*)0);
 free(coal_info);
 return 0;
}
