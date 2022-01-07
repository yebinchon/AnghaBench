
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int playlist_t ;
struct TYPE_3__ {int type; int * data; } ;
typedef TYPE_1__ menu_ctx_environment_t ;


 int MENU_ENVIRON_NONE ;
 int MENU_ENVIRON_RESET_HORIZONTAL_LIST ;
 int RARCH_MENU_CTL_ENVIRONMENT ;
 int action_cancel_pop_default (int *,int *,int ,int ) ;
 int filestream_delete (char const*) ;
 int menu_driver_ctl (int ,TYPE_1__*) ;
 int * playlist_get_cached () ;
 char* playlist_get_conf_path (int *) ;

__attribute__((used)) static int action_ok_delete_playlist(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist = playlist_get_cached();
   menu_ctx_environment_t menu_environ;

   if (!playlist)
      return -1;

   menu_environ.type = MENU_ENVIRON_NONE;
   menu_environ.data = ((void*)0);

   path = playlist_get_conf_path(playlist);

   filestream_delete(path);

   menu_environ.type = MENU_ENVIRON_RESET_HORIZONTAL_LIST;

   menu_driver_ctl(RARCH_MENU_CTL_ENVIRONMENT, &menu_environ);

   return action_cancel_pop_default(((void*)0), ((void*)0), 0, 0);
}
