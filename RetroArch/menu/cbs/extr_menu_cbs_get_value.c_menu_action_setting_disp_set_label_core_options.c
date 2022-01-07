
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;
typedef int core_option_manager_t ;


 int MENU_ENUM_LABEL_DISABLED ;
 int MENU_ENUM_LABEL_ENABLED ;
 int MENU_ENUM_LABEL_VALUE_OFF ;
 int MENU_ENUM_LABEL_VALUE_ON ;
 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 int RARCH_CTL_CORE_OPTIONS_LIST_GET ;
 char* core_option_manager_get_val_label (int *,unsigned int) ;
 char* msg_hash_to_str (int ) ;
 scalar_t__ rarch_ctl (int ,int **) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void menu_action_setting_disp_set_label_core_options(file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   core_option_manager_t *coreopts = ((void*)0);
   const char *core_opt = ((void*)0);

   *s = '\0';
   *w = 19;

   if (rarch_ctl(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts))
   {
      core_opt = core_option_manager_get_val_label(coreopts,
            type - MENU_SETTINGS_CORE_OPTION_START);

      strlcpy(s, "", len);

      if (core_opt)
      {
         if (string_is_equal(core_opt, msg_hash_to_str(MENU_ENUM_LABEL_ENABLED)))
            core_opt = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ON);
         else if (string_is_equal(core_opt, msg_hash_to_str(MENU_ENUM_LABEL_DISABLED)))
            core_opt = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF);
         strlcpy(s, core_opt, len);
      }
   }

   strlcpy(s2, path, len2);
}
