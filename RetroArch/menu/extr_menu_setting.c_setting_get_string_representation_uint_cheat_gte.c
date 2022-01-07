
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int MENU_ENUM_LABEL_CHEAT_SEARCH_GTE_VAL ;
 int msg_hash_to_str (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_cheat_gte(rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
      strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_CHEAT_SEARCH_GTE_VAL), len);
}
