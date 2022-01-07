
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int wcslen (char const*) ;

__attribute__((used)) static void wstr2cstr(char *dst, const wchar_t *src)
{
 int i;
 for (i = wcslen(src); i >= 0; i--)
  dst[i] = src[i];
}
