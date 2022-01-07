
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;
typedef int core_option_manager_t ;


 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 int RARCH_CTL_CORE_OPTIONS_LIST_GET ;
 char* core_option_manager_get_info (int *,unsigned int) ;
 int rarch_ctl (int ,int **) ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int action_bind_sublabel_core_option(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   core_option_manager_t *opt = ((void*)0);
   const char *info = ((void*)0);

   if (!rarch_ctl(RARCH_CTL_CORE_OPTIONS_LIST_GET, &opt))
      return 0;

   info = core_option_manager_get_info(opt, type - MENU_SETTINGS_CORE_OPTION_START);

   if (!string_is_empty(info))
      strlcpy(s, info, len);

   return 0;
}
