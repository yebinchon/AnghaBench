
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 scalar_t__ islower (char const) ;
 scalar_t__ isxdigit (char const) ;
 char const toupper (char const) ;

unsigned long long simple_strtoull(const char *cp,char **endp,unsigned int base)
{
 unsigned long long result = 0,value;

 if (!base) {
  base = 10;
  if (*cp == '0') {
   base = 8;
   cp++;
   if ((*cp == 'x') && isxdigit(cp[1])) {
    cp++;
    base = 16;
   }
  }
 }
 while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp-'0' : (islower(*cp)
     ? toupper(*cp) : *cp)-'A'+10) < base) {
  result = result*base + value;
  cp++;
 }
 if (endp)
  *endp = (char *)cp;
 return result;
}
