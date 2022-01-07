
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curl_maprintf (char*,char const*,int) ;

__attribute__((used)) static char *suburl(const char *base, int i)
{
  return curl_maprintf("%s%.4d", base, i);
}
