
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_ENUM_LABEL_VALUE_SELECT_FILE ;
 int msg_hash_to_str (int ) ;
 int string_is_empty (char const*) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static int action_get_title_default(const char *path, const char *label,
      unsigned menu_type, char *s, size_t len)
{
   strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_SELECT_FILE), len);
   strlcat(s, " ", len);
   if (!string_is_empty(path))
      strlcat(s, path, len);
   return 0;
}
