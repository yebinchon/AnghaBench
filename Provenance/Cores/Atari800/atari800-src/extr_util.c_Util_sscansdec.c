
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int Util_sscandec (char const*) ;

int Util_sscansdec(char const *s, int *dest)
{
 int minus = FALSE;
 switch(*s) {
 case '-':
  minus = TRUE;

 case '+':
  ++s;
 }
 *dest = Util_sscandec(s);
 if (*dest == -1)
  return FALSE;
 if (minus)
  *dest = -*dest;
 return TRUE;
}
