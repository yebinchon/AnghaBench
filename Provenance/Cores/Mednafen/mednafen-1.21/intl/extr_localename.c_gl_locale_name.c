
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* gl_locale_name_default () ;
 char* gl_locale_name_posix (int,char const*) ;
 char* gl_locale_name_thread (int,char const*) ;

const char *
gl_locale_name (int category, const char *categoryname)
{
  const char *retval;

  retval = gl_locale_name_thread (category, categoryname);
  if (retval != ((void*)0))
    return retval;

  retval = gl_locale_name_posix (category, categoryname);
  if (retval != ((void*)0))
    return retval;

  return gl_locale_name_default ();
}
