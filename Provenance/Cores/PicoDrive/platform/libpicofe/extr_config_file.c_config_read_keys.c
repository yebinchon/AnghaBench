
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int dev ;


 unsigned int array_size (int*) ;
 int get_line (char*,int,char const*) ;
 int* in_adev ;
 int in_clean_binds () ;
 int in_config_bind_key (int,char*,int,int) ;
 int in_config_parse_dev (char*) ;
 int in_unbind_all (int,int,int) ;
 int lprintf (char*,char*) ;
 int mystrip (char*) ;
 int parse_bind_val (char*,int*) ;
 int printf (char*,...) ;
 int sscanf (char const*,char*,int*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strstr (char const*,char*) ;

void config_read_keys(const char *cfg_content)
{
 char dev[256], key[128], *act;
 const char *p;
 int bind, bindtype;
 int dev_id;

 p = cfg_content;
 while (p != ((void*)0) && (p = strstr(p, "binddev = ")) != ((void*)0)) {
  p += 10;

  get_line(dev, sizeof(dev), p);
  dev_id = in_config_parse_dev(dev);
  if (dev_id < 0) {
   printf("input: can't handle dev: %s\n", dev);
   continue;
  }

  in_unbind_all(dev_id, -1, -1);
  while ((p = strstr(p, "bind"))) {
   if (strncmp(p, "binddev = ", 10) == 0)
    break;
   p += 4;
   if (*p != ' ') {
    printf("input: parse error: %16s..\n", p);
    continue;
   }

   get_line(key, sizeof(key), p);
   act = strchr(key, '=');
   if (act == ((void*)0)) {
    printf("parse failed: %16s..\n", p);
    continue;
   }
   *act = 0;
   act++;
   mystrip(key);
   mystrip(act);

   bind = parse_bind_val(act, &bindtype);
   if (bind != -1 && bind != 0) {

    in_config_bind_key(dev_id, key, bind, bindtype);
   }
   else
    lprintf("config: unhandled action \"%s\"\n", act);
  }
 }
 in_clean_binds();
}
