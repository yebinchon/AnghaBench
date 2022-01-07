
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char pg_toupper (unsigned char) ;
 char* pstrdup (char const*) ;

__attribute__((used)) static char *
CopyAndConvertToUpperCase(const char *str)
{
 char *result, *p;

 result = pstrdup(str);

 for (p = result; *p; p++)
 {
  *p = pg_toupper((unsigned char) *p);
 }

 return result;
}
