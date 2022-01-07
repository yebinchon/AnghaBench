
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Format (char*,int ,char*,char*) ;
 int StrCpy (char*,int ,char*) ;

void GenDnsCacheKeyName(char *dst, UINT size, char *src, bool ipv6)
{

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 if (ipv6 == 0)
 {
  StrCpy(dst, size, src);
 }
 else
 {
  Format(dst, size, "%s@ipv6", src);
 }
}
