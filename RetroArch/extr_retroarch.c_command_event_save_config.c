
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int log ;


 int MSG_FAILED_SAVING_CONFIG_TO ;
 int MSG_SAVED_NEW_CONFIG_TO ;
 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,char*) ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_CONFIG ;
 scalar_t__ config_save_file (char const*) ;
 char* msg_hash_to_str (int ) ;
 char const* path_get (int ) ;
 int snprintf (char*,size_t,char*,char*,char const*) ;
 int string_is_empty (char const*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static bool command_event_save_config(
      const char *config_path,
      char *s, size_t len)
{
   char log[PATH_MAX_LENGTH];
   bool path_exists = !string_is_empty(config_path);
   const char *str = path_exists ? config_path :
      path_get(RARCH_PATH_CONFIG);

   if (path_exists && config_save_file(config_path))
   {
      snprintf(s, len, "%s \"%s\".",
            msg_hash_to_str(MSG_SAVED_NEW_CONFIG_TO),
            config_path);

      strlcpy(log, "[config] ", sizeof(log));
      strlcat(log, s, sizeof(log));
      RARCH_LOG("%s\n", log);
      return 1;
   }

   if (!string_is_empty(str))
   {
      snprintf(s, len, "%s \"%s\".",
            msg_hash_to_str(MSG_FAILED_SAVING_CONFIG_TO),
            str);

      strlcpy(log, "[config] ", sizeof(log));
      strlcat(log, s, sizeof(log));
      RARCH_ERR("%s\n", log);
   }

   return 0;
}
