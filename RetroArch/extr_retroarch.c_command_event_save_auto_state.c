
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int savestate_auto_save; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_8__ {int savestate; } ;
struct TYPE_10__ {TYPE_2__ name; } ;
typedef TYPE_4__ global_t ;


 scalar_t__ CORE_TYPE_DUMMY ;
 int MSG_AUTO_SAVE_STATE_TO ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,int ,char*,char*) ;
 int RARCH_PATH_BASENAME ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* configuration_settings ;
 int content_save_state (char const*,int,int) ;
 scalar_t__ current_core_type ;
 int fill_pathname_noext (char*,int ,char*,size_t) ;
 int free (char*) ;
 TYPE_4__ g_extern ;
 int msg_hash_to_str (int ) ;
 int path_basename (int ) ;
 int path_get (int ) ;
 scalar_t__ rcheevos_hardcore_active ;
 scalar_t__ string_is_empty (int ) ;

__attribute__((used)) static bool command_event_save_auto_state(void)
{
   bool ret = 0;
   char *savestate_name_auto = ((void*)0);
   size_t
      savestate_name_auto_size = PATH_MAX_LENGTH * sizeof(char);
   settings_t *settings = configuration_settings;
   global_t *global = &g_extern;

   if (!global || !settings || !settings->bools.savestate_auto_save)
      return 0;
   if (current_core_type == CORE_TYPE_DUMMY)
      return 0;

   if (string_is_empty(path_basename(path_get(RARCH_PATH_BASENAME))))
      return 0;






   savestate_name_auto = (char*)
      calloc(PATH_MAX_LENGTH, sizeof(*savestate_name_auto));

   fill_pathname_noext(savestate_name_auto, global->name.savestate,
         ".auto", savestate_name_auto_size);

   ret = content_save_state((const char*)savestate_name_auto, 1, 1);
   RARCH_LOG("%s \"%s\" %s.\n",
         msg_hash_to_str(MSG_AUTO_SAVE_STATE_TO),
         savestate_name_auto, ret ?
         "succeeded" : "failed");

   free(savestate_name_auto);
   return 1;
}
