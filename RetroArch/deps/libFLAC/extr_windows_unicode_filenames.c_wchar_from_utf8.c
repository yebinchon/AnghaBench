
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 scalar_t__ MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static wchar_t *wchar_from_utf8(const char *str)
{
 wchar_t *widestr;
 int len;

 if (!str)
  return ((void*)0);
 if ((len = MultiByteToWideChar(CP_UTF8, 0, str, -1, ((void*)0), 0)) == 0)
  return ((void*)0);
 if ((widestr = (wchar_t *)malloc(len*sizeof(wchar_t))) == ((void*)0))
  return ((void*)0);
 if (MultiByteToWideChar(CP_UTF8, 0, str, -1, widestr, len) == 0) {
  free(widestr);
  widestr = ((void*)0);
 }

 return widestr;
}
