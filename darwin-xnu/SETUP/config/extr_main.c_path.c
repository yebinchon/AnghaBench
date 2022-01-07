
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* build_directory ;
 char* malloc (unsigned int) ;
 char* object_directory ;
 int sprintf (char*,char*,char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *
path(const char *file)
{
 char *cp;

 cp = malloc((unsigned)(strlen(build_directory)+
          strlen(file)+
          strlen(object_directory)+
          3));
 (void) sprintf(cp, "%s/%s/%s", object_directory, build_directory, file);
 return (cp);
}
