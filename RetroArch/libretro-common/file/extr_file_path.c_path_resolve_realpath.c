
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int PATH_MAX_LENGTH ;
 int _fullpath (char*,char*,size_t) ;
 int getcwd (char*,int) ;
 int path_is_absolute (char*) ;
 int realpath (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ string_is_empty (char*) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;

char *path_resolve_realpath(char *buf, size_t size, bool resolve_symlinks)
{
   return ((void*)0);
}
