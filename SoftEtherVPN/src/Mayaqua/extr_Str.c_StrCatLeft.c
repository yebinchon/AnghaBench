
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 char* CopyStr (char*) ;
 int Free (char*) ;
 int StrCat (char*,int ,char*) ;
 int StrCpy (char*,int ,char*) ;
 int StrLen (char*) ;

UINT StrCatLeft(char *dst, UINT size, char *src)
{
 char *s;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return 0;
 }

 s = CopyStr(dst);
 StrCpy(dst, size, src);
 StrCat(dst, size, s);

 Free(s);

 return StrLen(dst);
}
