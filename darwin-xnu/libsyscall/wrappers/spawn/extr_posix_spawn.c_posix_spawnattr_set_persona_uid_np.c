
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct _posix_spawn_persona_info {int pspi_flags; int pspi_uid; } ;
typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
struct TYPE_2__ {struct _posix_spawn_persona_info* psa_persona_info; } ;


 int EINVAL ;
 int POSIX_SPAWN_PERSONA_FLAGS_OVERRIDE ;
 int POSIX_SPAWN_PERSONA_FLAGS_VERIFY ;
 int POSIX_SPAWN_PERSONA_UID ;

int
posix_spawnattr_set_persona_uid_np(const posix_spawnattr_t * __restrict attr, uid_t uid)
{
 _posix_spawnattr_t psattr;
 struct _posix_spawn_persona_info *persona;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 persona = psattr->psa_persona_info;
 if (!persona)
  return EINVAL;

 if (!(persona->pspi_flags & (POSIX_SPAWN_PERSONA_FLAGS_OVERRIDE | POSIX_SPAWN_PERSONA_FLAGS_VERIFY)))
  return EINVAL;

 persona->pspi_uid = uid;

 persona->pspi_flags |= POSIX_SPAWN_PERSONA_UID;

 return 0;
}
