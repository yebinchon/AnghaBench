
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char PATHSEPERATOR_CHAR ;

void ConvertPath(char *path)
{
 while(*path)
 {
  if (*path == '/' || *path == '\\') *path = PATHSEPERATOR_CHAR;
  path++;
 }
}
