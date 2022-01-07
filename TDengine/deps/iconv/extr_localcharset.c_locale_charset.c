
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp ;
typedef int buf ;
typedef int ULONG ;


 int CODESET ;
 scalar_t__ DosQueryCp (int,int*,int*) ;
 int GetACP () ;
 int LC_CTYPE ;
 char* get_charset_aliases () ;
 char* getenv (char*) ;
 int memcpy (char*,char const*,int) ;
 char* nl_langinfo (int ) ;
 char* setlocale (int ,int *) ;
 int sprintf (char*,char*,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

const char *
locale_charset (void)
{
  const char *codeset;
  const char *aliases;
  const char *locale = ((void*)0);
  if (locale == ((void*)0) || locale[0] == '\0')
    {
      locale = getenv ("LC_ALL");
      if (locale == ((void*)0) || locale[0] == '\0')
 {
   locale = getenv ("LC_CTYPE");
   if (locale == ((void*)0) || locale[0] == '\0')
     locale = getenv ("LANG");
 }
    }




  codeset = locale;
  if (codeset == ((void*)0))

    codeset = "";


  for (aliases = get_charset_aliases ();
       *aliases != '\0';
       aliases += strlen (aliases) + 1, aliases += strlen (aliases) + 1)
    if (strcmp (codeset, aliases) == 0
 || (aliases[0] == '*' && aliases[1] == '\0'))
      {
 codeset = aliases + strlen (aliases) + 1;
 break;
      }




  if (codeset[0] == '\0')
    codeset = "ASCII";

  return codeset;
}
