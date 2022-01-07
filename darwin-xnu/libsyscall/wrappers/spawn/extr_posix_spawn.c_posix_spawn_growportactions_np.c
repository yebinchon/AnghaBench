
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
typedef TYPE_2__* _posix_spawn_port_actions_t ;
struct TYPE_6__ {int pspa_alloc; } ;
struct TYPE_5__ {TYPE_2__* psa_ports; } ;


 int EINVAL ;
 int ENOMEM ;
 size_t PS_PORT_ACTIONS_SIZE (int) ;
 scalar_t__ os_mul_overflow (int,int,int*) ;
 TYPE_2__* realloc (TYPE_2__*,size_t) ;

__attribute__((used)) static int
posix_spawn_growportactions_np(posix_spawnattr_t *attr)
{
 _posix_spawnattr_t psattr;
 _posix_spawn_port_actions_t acts;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 acts = psattr->psa_ports;
 if (acts == ((void*)0))
  return EINVAL;


 int newnum = 0;
 if (os_mul_overflow(acts->pspa_alloc, 2, &newnum))
  return ENOMEM;
 size_t newsize = PS_PORT_ACTIONS_SIZE(newnum);
 if (newsize == 0)
  return ENOMEM;

 acts = realloc(acts, newsize);
 if (acts == ((void*)0))
  return ENOMEM;

 acts->pspa_alloc = newnum;
 psattr->psa_ports = acts;
 return 0;
}
