
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int env ;


 int ExpandEnvironmentStringsA (char*,char*,int) ;
 char* getenv (char const*) ;
 char* strdup (char*) ;

__attribute__((used)) static
char *GetEnv(const char *variable)
{
  char *env = getenv(variable);
  return (env && env[0])?strdup(env):((void*)0);


}
