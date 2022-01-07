
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Unsigned ;
typedef scalar_t__ lua_Integer ;


 int SPACECHARS ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 int strspn (char const*,int ) ;
 char toupper (unsigned char) ;

__attribute__((used)) static const char *b_str2int (const char *s, int base, lua_Integer *pn) {
  lua_Unsigned n = 0;
  int neg = 0;
  s += strspn(s, SPACECHARS);
  if (*s == '-') { s++; neg = 1; }
  else if (*s == '+') s++;
  if (!isalnum((unsigned char)*s))
    return ((void*)0);
  do {
    int digit = (isdigit((unsigned char)*s)) ? *s - '0'
                   : (toupper((unsigned char)*s) - 'A') + 10;
    if (digit >= base) return ((void*)0);
    n = n * base + digit;
    s++;
  } while (isalnum((unsigned char)*s));
  s += strspn(s, SPACECHARS);
  *pn = (lua_Integer)((neg) ? (0u - n) : n);
  return s;
}
