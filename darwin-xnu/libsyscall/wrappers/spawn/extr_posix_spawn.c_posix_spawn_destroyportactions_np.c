
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
typedef int * _posix_spawn_port_actions_t ;
struct TYPE_2__ {int * psa_ports; } ;


 int EINVAL ;
 int free (int *) ;

__attribute__((used)) static int
posix_spawn_destroyportactions_np(posix_spawnattr_t *attr)
{
 _posix_spawnattr_t psattr;
 _posix_spawn_port_actions_t acts;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 acts = psattr->psa_ports;
 if (acts == ((void*)0))
  return EINVAL;

 free(acts);
 return 0;
}
