
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void ExtractFileExtension (char *path, char *dest)
{
 char *src;

 src = path + strlen(path) - 1;




 while (src != path && *(src-1) != '.')
  src--;
 if (src == path)
 {
  *dest = 0;
  return;
 }

 strcpy (dest,src);
}
