
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef int buf1 ;
typedef int DWORD ;


 int ExpandEnvironmentStringsA (char const*,char*,int) ;
 int GetEnvironmentVariableA (char const*,char*,int) ;
 char* getenv (char const*) ;
 scalar_t__ strchr (char const*,char) ;
 char* strdup (char*) ;

__attribute__((used)) static char *GetEnv(const char *variable, char do_expand)
{
  char *env = ((void*)0);
  (void)do_expand;

  env = getenv(variable);

  return (env && env[0]) ? strdup(env) : ((void*)0);
}
