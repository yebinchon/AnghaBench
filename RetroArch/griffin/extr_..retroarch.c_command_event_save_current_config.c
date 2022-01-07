
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef enum override_type { ____Placeholder_override_type } override_type ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_OVERRIDES_ERROR_SAVING ;
 int MSG_OVERRIDES_SAVED_SUCCESSFULLY ;




 int RARCH_ERR (char*,char*) ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_CONFIG ;
 int command_event_save_config (int ,char*,int) ;
 int config_save_overrides (int) ;
 char* msg_hash_to_str (int ) ;
 int path_get (int ) ;
 int path_is_empty (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int runloop_overrides_active ;
 int string_is_empty (char*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void command_event_save_current_config(enum override_type type)
{
   char msg[128];

   msg[0] = '\0';

   switch (type)
   {
      case 128:
         if (path_is_empty(RARCH_PATH_CONFIG))
            strlcpy(msg, "[config] Config directory not set, cannot save configuration.",
                  sizeof(msg));
         else
            command_event_save_config(path_get(RARCH_PATH_CONFIG), msg, sizeof(msg));
         break;
      case 129:
      case 130:
      case 131:
         if (config_save_overrides(type))
         {
            strlcpy(msg, msg_hash_to_str(MSG_OVERRIDES_SAVED_SUCCESSFULLY), sizeof(msg));
            RARCH_LOG("[config] [overrides] %s\n", msg);



            runloop_overrides_active = 1;
         }
         else
         {
            strlcpy(msg, msg_hash_to_str(MSG_OVERRIDES_ERROR_SAVING), sizeof(msg));
            RARCH_ERR("[config] [overrides] %s\n", msg);
         }
         break;
   }

   if (!string_is_empty(msg))
      runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
}
