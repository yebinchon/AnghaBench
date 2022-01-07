
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*) ;
 char* qdir ;
 int sprintf (char*,char*,char*,char*) ;

char *ExpandPath (char *path)
{
 static char full[1024];
 if (!qdir)
  Error ("ExpandPath called without qdir set");
 if (path[0] == '/' || path[0] == '\\' || path[1] == ':')
  return path;
 sprintf (full, "%s%s", qdir, path);
 return full;
}
