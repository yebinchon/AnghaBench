
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_STRLOC ;
 int _putenv_s (char const*,char const*) ;
 int g_critical (char*,int ,char const*,char const*,...) ;
 scalar_t__ g_setenv (char const*,char const*,int) ;
 int getenv (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int chassis_frontend_lua_setenv(const char *key, const char *value) {
 int r;



 r = g_setenv(key, value, 1) ? 0 : -1;


 if (0 == r) {

  if (!getenv(key)) {

   g_critical("%s: setting %s = %s failed: (getenv() == NULL)", G_STRLOC,
     key, value);
  } else if (0 != strcmp(getenv(key), value)) {
   g_critical("%s: setting %s = %s failed: (getenv() == %s)", G_STRLOC,
     key, value,
     getenv(key));
  }
 }

 return r;
}
