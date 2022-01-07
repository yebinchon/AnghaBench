
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
typedef TYPE_2__* _posix_spawn_port_actions_t ;
struct TYPE_4__ {int pspa_alloc; scalar_t__ pspa_count; } ;
struct TYPE_3__ {TYPE_2__* psa_ports; } ;


 int EINVAL ;
 int ENOMEM ;
 int PS_PORT_ACTIONS_SIZE (int) ;
 scalar_t__ malloc (int ) ;

__attribute__((used)) static int
posix_spawn_createportactions_np(posix_spawnattr_t *attr)
{
 _posix_spawnattr_t psattr;
 _posix_spawn_port_actions_t acts;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 acts = (_posix_spawn_port_actions_t)malloc(PS_PORT_ACTIONS_SIZE(2));
 if (acts == ((void*)0))
  return ENOMEM;

 acts->pspa_alloc = 2;
 acts->pspa_count = 0;

 psattr->psa_ports = acts;
 return 0;
}
