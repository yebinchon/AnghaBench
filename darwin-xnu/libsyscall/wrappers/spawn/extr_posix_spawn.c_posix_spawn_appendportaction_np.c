
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * posix_spawnattr_t ;
typedef int _ps_port_action_t ;
typedef TYPE_1__* _posix_spawnattr_t ;
typedef TYPE_2__* _posix_spawn_port_actions_t ;
struct TYPE_4__ {size_t pspa_alloc; size_t pspa_count; int * pspa_actions; } ;
struct TYPE_3__ {TYPE_2__* psa_ports; } ;


 int EINVAL ;
 int posix_spawn_createportactions_np (int **) ;
 int posix_spawn_growportactions_np (int **) ;

__attribute__((used)) static int
posix_spawn_appendportaction_np(posix_spawnattr_t *attr, _ps_port_action_t *act)
{
 _posix_spawnattr_t psattr;
 _posix_spawn_port_actions_t acts;

 if (attr == ((void*)0) || *attr == ((void*)0) || act == ((void*)0)) {
  return EINVAL;
 }

 psattr = *(_posix_spawnattr_t *)attr;
 acts = psattr->psa_ports;


 if (acts == ((void*)0)) {
  int err = posix_spawn_createportactions_np(attr);
  if (err) {
   return err;
  }
  acts = psattr->psa_ports;
 }


 if (acts->pspa_alloc == acts->pspa_count) {
  int err = posix_spawn_growportactions_np(attr);
  if (err) {
   return err;
  }
  acts = psattr->psa_ports;
 }


 acts->pspa_actions[acts->pspa_count] = *act;
 acts->pspa_count++;

 return 0;
}
