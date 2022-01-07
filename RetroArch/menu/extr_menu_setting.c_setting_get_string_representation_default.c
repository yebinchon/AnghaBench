
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void setting_get_string_representation_default(rarch_setting_t *setting,
      char *s, size_t len)
{
   strlcpy(s, "...", len);
}
