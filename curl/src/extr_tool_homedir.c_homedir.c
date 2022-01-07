
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;


 int FALSE ;
 char* GetEnv (char*,int ) ;
 int TRUE ;
 int geteuid () ;
 struct passwd* getpwuid (int ) ;
 char* strdup (char*) ;

char *homedir(void)
{
  char *home;

  home = GetEnv("CURL_HOME", FALSE);
  if(home)
    return home;

  home = GetEnv("HOME", FALSE);
  if(home)
    return home;
  return home;
}
