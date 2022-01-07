
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int strlen (char const*) ;

__attribute__((used)) static int cstr2wstr(wchar_t *dst, const char *src)
{
 int i, len;
 for (i = len = strlen(src); i >= 0; i--)
  dst[i] = src[i];
 return len;
}
