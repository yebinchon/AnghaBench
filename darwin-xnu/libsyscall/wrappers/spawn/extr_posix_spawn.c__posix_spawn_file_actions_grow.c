
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* _posix_spawn_file_actions_t ;
struct TYPE_4__ {int psfa_act_alloc; } ;


 int ENOMEM ;
 size_t PSF_ACTIONS_SIZE (int) ;
 scalar_t__ os_mul_overflow (int,int,int*) ;
 scalar_t__ realloc (TYPE_1__*,size_t) ;

__attribute__((used)) static int
_posix_spawn_file_actions_grow(_posix_spawn_file_actions_t *psactsp)
{
 int newnum = 0;
 if (os_mul_overflow((*psactsp)->psfa_act_alloc, 2, &newnum))
  return ENOMEM;

 size_t newsize = PSF_ACTIONS_SIZE(newnum);
 if (newsize == 0)
  return ENOMEM;







 _posix_spawn_file_actions_t new_psacts;
 if ((new_psacts = (_posix_spawn_file_actions_t)realloc((*psactsp), newsize)) == ((void*)0)) {
  return ENOMEM;
 }
 new_psacts->psfa_act_alloc = newnum;
 *psactsp = new_psacts;

 return 0;
}
