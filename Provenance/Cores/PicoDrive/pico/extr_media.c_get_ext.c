
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strlwr_ (char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void get_ext(const char *file, char *ext)
{
  const char *p;

  p = file + strlen(file) - 4;
  if (p < file) p = file;
  strncpy(ext, p, 4);
  ext[4] = 0;
  strlwr_(ext);
}
