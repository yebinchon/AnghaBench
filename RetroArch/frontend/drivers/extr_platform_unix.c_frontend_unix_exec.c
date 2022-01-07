
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execv (char const*,char**) ;
 scalar_t__ malloc (size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void frontend_unix_exec(const char *path, bool should_load_game)
{
   char *newargv[] = { ((void*)0), ((void*)0) };
   size_t len = strlen(path);

   newargv[0] = (char*)malloc(len);

   strlcpy(newargv[0], path, len);

   execv(path, newargv);
}
