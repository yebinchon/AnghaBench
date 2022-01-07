
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int FALSE ;
 int TRUE ;
 scalar_t__ errno ;
 double strtod (char const*,char**) ;

int Util_sscandouble(char const *s, double *dest)
{
 char *endptr;
 double result;

 result = strtod(s, &endptr);
 if (endptr[0] != '\0' || errno == ERANGE)
  return FALSE;
 *dest = result;
 return TRUE;

}
