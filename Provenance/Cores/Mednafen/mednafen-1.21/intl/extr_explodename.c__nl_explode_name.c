
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XPG_CODESET ;
 int XPG_MODIFIER ;
 int XPG_NORM_CODESET ;
 int XPG_TERRITORY ;
 char* _nl_find_language (char const*) ;
 char* _nl_normalize_codeset (char const*,int) ;
 int free (char*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;

int
_nl_explode_name (char *name,
    const char **language, const char **modifier,
    const char **territory, const char **codeset,
    const char **normalized_codeset)
{
  char *cp;
  int mask;

  *modifier = ((void*)0);
  *territory = ((void*)0);
  *codeset = ((void*)0);
  *normalized_codeset = ((void*)0);



  mask = 0;
  *language = cp = name;
  cp = _nl_find_language (*language);

  if (*language == cp)


    cp = strchr (*language, '\0');
  else
    {
      if (cp[0] == '_')
 {

   cp[0] = '\0';
   *territory = ++cp;

   while (cp[0] != '\0' && cp[0] != '.' && cp[0] != '@')
     ++cp;

   mask |= XPG_TERRITORY;
 }

      if (cp[0] == '.')
 {

   cp[0] = '\0';
   *codeset = ++cp;

   while (cp[0] != '\0' && cp[0] != '@')
     ++cp;

   mask |= XPG_CODESET;

   if (*codeset != cp && (*codeset)[0] != '\0')
     {
       *normalized_codeset = _nl_normalize_codeset (*codeset,
          cp - *codeset);
       if (*normalized_codeset == ((void*)0))
  return -1;
       else if (strcmp (*codeset, *normalized_codeset) == 0)
  free ((char *) *normalized_codeset);
       else
  mask |= XPG_NORM_CODESET;
     }
 }
    }

  if (cp[0] == '@')
    {

      cp[0] = '\0';
      *modifier = ++cp;

      if (cp[0] != '\0')
 mask |= XPG_MODIFIER;
    }

  if (*territory != ((void*)0) && (*territory)[0] == '\0')
    mask &= ~XPG_TERRITORY;

  if (*codeset != ((void*)0) && (*codeset)[0] == '\0')
    mask &= ~XPG_CODESET;

  return mask;
}
