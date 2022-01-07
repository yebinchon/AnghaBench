
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_VK_NKEYS ;
 char** in_vk_keys ;

__attribute__((used)) static const char *in_vk_get_key_name(int keycode)
{
 const char *name = ((void*)0);
 static char buff[4];

 if ('A' <= keycode && keycode < 'Z') {
  buff[0] = keycode;
  buff[1] = 0;
  return buff;
 }

 if (0 <= keycode && keycode < IN_VK_NKEYS)
  name = in_vk_keys[keycode];
 if (name == ((void*)0))
  name = "Unkn";

 return name;
}
