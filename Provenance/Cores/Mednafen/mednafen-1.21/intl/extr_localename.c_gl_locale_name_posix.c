
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* gl_locale_name_environ (int,char const*) ;
 char const* setlocale (int,int *) ;

const char *
gl_locale_name_posix (int category, const char *categoryname)
{
  return gl_locale_name_environ (category, categoryname);

}
