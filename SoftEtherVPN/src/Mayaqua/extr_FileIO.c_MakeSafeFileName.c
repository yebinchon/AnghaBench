
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT ;


 int MAX_PATH ;
 int ReplaceStrEx (char*,int,char*,char*,char*,int) ;
 int StrCpy (char*,int,char*) ;

void MakeSafeFileName(char *dst, UINT size, char *src)
{
 char tmp[MAX_PATH];

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 StrCpy(tmp, sizeof(tmp), src);
 ReplaceStrEx(tmp, sizeof(tmp), tmp, "..", "__", 0);
 ReplaceStrEx(tmp, sizeof(tmp), tmp, "/", "_", 0);
 ReplaceStrEx(tmp, sizeof(tmp), tmp, "\\", "_", 0);
 ReplaceStrEx(tmp, sizeof(tmp), tmp, "@", "_", 0);
 ReplaceStrEx(tmp, sizeof(tmp), tmp, "|", "_", 0);

 StrCpy(dst, size, tmp);
}
