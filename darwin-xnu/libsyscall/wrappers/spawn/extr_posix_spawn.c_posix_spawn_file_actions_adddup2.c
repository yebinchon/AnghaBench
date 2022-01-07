
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * posix_spawn_file_actions_t ;
struct TYPE_5__ {int psfao_oflag; } ;
struct TYPE_6__ {int psfaa_filedes; TYPE_1__ psfaa_openargs; int psfaa_type; } ;
typedef TYPE_2__ _psfa_action_t ;
typedef TYPE_3__* _posix_spawn_file_actions_t ;
struct TYPE_7__ {scalar_t__ psfa_act_count; scalar_t__ psfa_act_alloc; TYPE_2__* psfa_act_acts; } ;


 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int OPEN_MAX ;
 int PSFA_DUP2 ;
 scalar_t__ _posix_spawn_file_actions_grow (TYPE_3__**) ;

int
posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t *file_actions,
  int filedes, int newfiledes)
{
 _posix_spawn_file_actions_t *psactsp;
 _psfa_action_t *psfileact;

 if (file_actions == ((void*)0) || *file_actions == ((void*)0))
  return EINVAL;

 psactsp = (_posix_spawn_file_actions_t *)file_actions;

 if (filedes < 0 || filedes >= OPEN_MAX ||
     newfiledes < 0 || newfiledes >= OPEN_MAX)
  return (EBADF);


 if ((*psactsp)->psfa_act_count == (*psactsp)->psfa_act_alloc) {

  if (_posix_spawn_file_actions_grow(psactsp))
   return (ENOMEM);
 }




 psfileact = &(*psactsp)->psfa_act_acts[(*psactsp)->psfa_act_count++];

 psfileact->psfaa_type = PSFA_DUP2;
 psfileact->psfaa_filedes = filedes;
 psfileact->psfaa_openargs.psfao_oflag = newfiledes;

 return (0);
}
