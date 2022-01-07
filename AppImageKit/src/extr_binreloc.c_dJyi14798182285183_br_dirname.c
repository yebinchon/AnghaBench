
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* br_strndup (char const*,int) ;
 int free (char*) ;
 char* strdup (char*) ;
 char* strrchr (char const*,char) ;

char *
br_dirname (const char *path)
{
 char *end, *result;

 if (path == (const char *) ((void*)0))
  return (char *) ((void*)0);

 end = strrchr (path, '/');
 if (end == (const char *) ((void*)0))
  return strdup (".");

 while (end > path && *end == '/')
  end--;
 result = br_strndup (path, end - path + 1);
 if (result[0] == 0) {
  free (result);
  return strdup ("/");
 } else
  return result;
}
