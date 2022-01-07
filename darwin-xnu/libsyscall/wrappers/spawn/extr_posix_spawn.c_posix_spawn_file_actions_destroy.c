
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * posix_spawn_file_actions_t ;
typedef int _posix_spawn_file_actions_t ;


 int EINVAL ;
 int free (int ) ;

int
posix_spawn_file_actions_destroy(posix_spawn_file_actions_t *file_actions)
{
 _posix_spawn_file_actions_t psacts;

 if (file_actions == ((void*)0) || *file_actions == ((void*)0))
  return EINVAL;

 psacts = *(_posix_spawn_file_actions_t *)file_actions;
 free(psacts);
 *file_actions = ((void*)0);

 return (0);
}
