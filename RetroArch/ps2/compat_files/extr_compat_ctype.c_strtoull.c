
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int ULLONG_MAX ;
 int errno ;
 scalar_t__ isspace (unsigned char) ;

unsigned long long strtoull(const char * __restrict nptr, char ** __restrict endptr, int base)
{
 const char *s;
 unsigned long long acc;
 char c;
 unsigned long long cutoff;
 int neg, any, cutlim;




 s = nptr;
 do {
  c = *s++;
 } while (isspace((unsigned char)c));
 if (c == '-') {
  neg = 1;
  c = *s++;
 } else {
  neg = 0;
  if (c == '+')
   c = *s++;
 }
 if ((base == 0 || base == 16) &&
     c == '0' && (*s == 'x' || *s == 'X')) {
  c = s[1];
  s += 2;
  base = 16;
 }
 if (base == 0)
  base = c == '0' ? 8 : 10;
 acc = any = 0;
 if (base < 2 || base > 36)
  goto noconv;

 cutoff = ULLONG_MAX / base;
 cutlim = ULLONG_MAX % base;
 for ( ; ; c = *s++) {
  if (c >= '0' && c <= '9')
   c -= '0';
  else if (c >= 'A' && c <= 'Z')
   c -= 'A' - 10;
  else if (c >= 'a' && c <= 'z')
   c -= 'a' - 10;
  else
   break;
  if (c >= base)
   break;
  if (any < 0 || acc > cutoff || (acc == cutoff && c > cutlim))
   any = -1;
  else {
   any = 1;
   acc *= base;
   acc += c;
  }
 }
 if (any < 0) {
  acc = ULLONG_MAX;
  errno = ERANGE;
 } else if (!any) {
noconv:
  errno = EINVAL;
 } else if (neg)
  acc = -acc;
 if (endptr != ((void*)0))
  *endptr = (char *)(any ? s - 1 : nptr);
 return (acc);
}
