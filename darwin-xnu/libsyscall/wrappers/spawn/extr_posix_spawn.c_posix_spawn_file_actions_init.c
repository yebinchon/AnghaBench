
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int posix_spawn_file_actions_t ;
typedef TYPE_1__* _posix_spawn_file_actions_t ;
struct TYPE_2__ {scalar_t__ psfa_act_count; int psfa_act_alloc; } ;


 int ENOMEM ;
 int PSF_ACTIONS_INIT_COUNT ;
 int PSF_ACTIONS_SIZE (int ) ;
 scalar_t__ malloc (int ) ;

int
posix_spawn_file_actions_init(posix_spawn_file_actions_t *file_actions)
{
 _posix_spawn_file_actions_t *psactsp = (_posix_spawn_file_actions_t *)file_actions;
 int err = 0;

 if ((*psactsp = (_posix_spawn_file_actions_t)malloc(PSF_ACTIONS_SIZE(PSF_ACTIONS_INIT_COUNT))) == ((void*)0)) {
  err = ENOMEM;
 } else {
  (*psactsp)->psfa_act_alloc = PSF_ACTIONS_INIT_COUNT;
  (*psactsp)->psfa_act_count = 0;
 }

 return (err);
}
