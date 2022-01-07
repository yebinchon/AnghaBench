
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETRO_ENVIRONMENT_GET_SYSTEM_DIRECTORY ;
 char* SLASH ;
 scalar_t__ environ_cb (int ,char const**) ;
 int snprintf (char*,size_t,char*,char const*,char const*,...) ;

__attribute__((used)) static void make_system_path(char *buf, size_t buf_size,
 const char *name, const char *ext)
{
 const char *dir = ((void*)0);

 if (environ_cb(RETRO_ENVIRONMENT_GET_SYSTEM_DIRECTORY, &dir) && dir) {
  snprintf(buf, buf_size, "%s%c%s%s", dir, SLASH, name, ext);
 }
 else {
  snprintf(buf, buf_size, "%s%s", name, ext);
 }
}
