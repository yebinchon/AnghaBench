
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ malloc (size_t) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *imap_atom(const char *str, bool escape_only)
{

  const char atom_specials[] = "(){ %*]";
  const char *p1;
  char *p2;
  size_t backsp_count = 0;
  size_t quote_count = 0;
  bool others_exists = FALSE;
  size_t newlen = 0;
  char *newstr = ((void*)0);

  if(!str)
    return ((void*)0);



  p1 = str;
  while(*p1) {
    if(*p1 == '\\')
      backsp_count++;
    else if(*p1 == '"')
      quote_count++;
    else if(!escape_only) {
      const char *p3 = atom_specials;

      while(*p3 && !others_exists) {
        if(*p1 == *p3)
          others_exists = TRUE;

        p3++;
      }
    }

    p1++;
  }


  if(!backsp_count && !quote_count && !others_exists)
    return strdup(str);


  newlen = strlen(str) + backsp_count + quote_count + (escape_only ? 0 : 2);


  newstr = (char *) malloc((newlen + 1) * sizeof(char));
  if(!newstr)
    return ((void*)0);


  p2 = newstr;
  if(!escape_only) {
    newstr[0] = '"';
    newstr[newlen - 1] = '"';
    p2++;
  }


  p1 = str;
  while(*p1) {
    if(*p1 == '\\' || *p1 == '"') {
      *p2 = '\\';
      p2++;
    }

   *p2 = *p1;

    p1++;
    p2++;
  }


  newstr[newlen] = '\0';

  return newstr;
}
