
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_VK_NKEYS ;
 char** in_vk_keys ;
 scalar_t__ strcasecmp (char const*,char const*) ;

__attribute__((used)) static int in_vk_get_key_code(const char *key_name)
{
 int i;

 if (key_name[1] == 0 && 'A' <= key_name[0] && key_name[0] <= 'Z')
  return key_name[0];

 for (i = 0; i < IN_VK_NKEYS; i++) {
  const char *k = in_vk_keys[i];
  if (k != ((void*)0) && strcasecmp(k, key_name) == 0)
   return i;
 }

 return -1;
}
