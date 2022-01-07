
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int savestate_auto_load; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_8__ {int savestate; } ;
struct TYPE_10__ {TYPE_2__ name; } ;
typedef TYPE_4__ global_t ;


 int MSG_AUTOLOADING_SAVESTATE_FROM ;
 int MSG_FOUND_AUTO_SAVESTATE_IN ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,int ,char*,int ,char*,char*) ;
 int RARCH_NETPLAY_CTL_IS_ENABLED ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* configuration_settings ;
 int content_load_state (char*,int,int) ;
 int fill_pathname_noext (char*,int ,char*,size_t) ;
 int free (char*) ;
 TYPE_4__ g_extern ;
 int msg_hash_to_str (int ) ;
 scalar_t__ netplay_driver_ctl (int ,int *) ;
 int path_is_valid (char*) ;
 scalar_t__ rcheevos_hardcore_active ;

__attribute__((used)) static void command_event_load_auto_state(void)
{
   bool ret = 0;
   char *savestate_name_auto = ((void*)0);
   size_t savestate_name_auto_size = PATH_MAX_LENGTH * sizeof(char);
   settings_t *settings = configuration_settings;
   global_t *global = &g_extern;

   if (!global || !settings->bools.savestate_auto_load)
      return;
   savestate_name_auto = (char*)calloc(PATH_MAX_LENGTH,
         sizeof(*savestate_name_auto));

   fill_pathname_noext(savestate_name_auto, global->name.savestate,
         ".auto", savestate_name_auto_size);

   if (!path_is_valid(savestate_name_auto))
   {
      free(savestate_name_auto);
      return;
   }

   ret = content_load_state(savestate_name_auto, 0, 1);

   RARCH_LOG("%s: %s\n%s \"%s\" %s.\n",
         msg_hash_to_str(MSG_FOUND_AUTO_SAVESTATE_IN),
         savestate_name_auto,
         msg_hash_to_str(MSG_AUTOLOADING_SAVESTATE_FROM),
         savestate_name_auto, ret ? "succeeded" : "failed"
         );

   free(savestate_name_auto);
}
