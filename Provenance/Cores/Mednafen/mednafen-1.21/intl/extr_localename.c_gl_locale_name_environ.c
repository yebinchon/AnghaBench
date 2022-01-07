
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *
gl_locale_name_environ (int category, const char *categoryname)
{
  const char *retval;


  retval = getenv ("LC_ALL");
  if (retval != ((void*)0) && retval[0] != '\0')
    return retval;

  retval = getenv (categoryname);
  if (retval != ((void*)0) && retval[0] != '\0')
    return retval;

  retval = getenv ("LANG");
  if (retval != ((void*)0) && retval[0] != '\0')
    {
        return retval;
    }

  return ((void*)0);
}
