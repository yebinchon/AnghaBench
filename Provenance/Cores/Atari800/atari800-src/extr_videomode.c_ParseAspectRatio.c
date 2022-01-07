
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 double strtod (char const*,char**) ;

__attribute__((used)) static int ParseAspectRatio(char const *s, double *w, double *h)
{
 char *s2;
 char *s3;
 *w = strtod(s, &s2);
 if (s2 == s || *w < 0.0)
  return FALSE;
 if (*s2 != ':')
  return FALSE;
 *h = strtod(++s2, &s3);
 if (s3 == s2 || *h < 0.0)
  return FALSE;
 return TRUE;
}
