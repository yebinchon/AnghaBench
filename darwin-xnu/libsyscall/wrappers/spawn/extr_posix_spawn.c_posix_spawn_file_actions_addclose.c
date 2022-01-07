
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * posix_spawn_file_actions_t ;
struct TYPE_4__ {int psfaa_filedes; int psfaa_type; } ;
typedef TYPE_1__ _psfa_action_t ;
typedef TYPE_2__* _posix_spawn_file_actions_t ;
struct TYPE_5__ {scalar_t__ psfa_act_count; scalar_t__ psfa_act_alloc; TYPE_1__* psfa_act_acts; } ;


 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int OPEN_MAX ;
 int PSFA_CLOSE ;
 scalar_t__ _posix_spawn_file_actions_grow (TYPE_2__**) ;

int
posix_spawn_file_actions_addclose(posix_spawn_file_actions_t *file_actions,
  int filedes)
{
 _posix_spawn_file_actions_t *psactsp;
 _psfa_action_t *psfileact;

 if (file_actions == ((void*)0) || *file_actions == ((void*)0))
  return EINVAL;

 psactsp = (_posix_spawn_file_actions_t *)file_actions;

 if (filedes < 0 || filedes >= OPEN_MAX)
  return (EBADF);


 if ((*psactsp)->psfa_act_count == (*psactsp)->psfa_act_alloc) {

  if (_posix_spawn_file_actions_grow(psactsp))
   return (ENOMEM);
 }




 psfileact = &(*psactsp)->psfa_act_acts[(*psactsp)->psfa_act_count++];

 psfileact->psfaa_type = PSFA_CLOSE;
 psfileact->psfaa_filedes = filedes;

 return (0);
}
