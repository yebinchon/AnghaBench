
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char PATHSEPERATOR_CHAR ;
 int strlen (char*) ;

void AppendPathSeperator(char *path, int length)
{
 int pathlen = strlen(path);

 if (strlen(path) && length-pathlen > 1 && path[pathlen-1] != '/' && path[pathlen-1] != '\\')
 {
  path[pathlen] = PATHSEPERATOR_CHAR;
  path[pathlen+1] = '\0';
 }
}
