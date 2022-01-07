
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;

void
makepath(char *buf, const char *dir, const char *file)
{
 strcpy(buf, dir);
 strcat(buf, "/");
 strcat(buf, file);
}
