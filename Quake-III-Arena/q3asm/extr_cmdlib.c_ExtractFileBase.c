
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const PATHSEPERATOR ;
 int strlen (char const*) ;

void ExtractFileBase (const char *path, char *dest)
{
 const char *src;

 src = path + strlen(path) - 1;




 while (src != path && *(src-1) != PATHSEPERATOR)
  src--;

 while (*src && *src != '.')
 {
  *dest++ = *src++;
 }
 *dest = 0;
}
