
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int fullpath2 ;
typedef int basepath2 ;
typedef int UINT ;


 int ClearUniStr (int *,int ) ;
 int MAX_SIZE ;
 int NormalizePathW (int *,int,int *) ;
 int UniStartWith (int *,int *) ;
 int UniStrCat (int *,int,char*) ;
 int UniStrCpy (int *,int ,int *) ;
 int UniStrLen (int *) ;

bool GetRelativePathW(wchar_t *dst, UINT size, wchar_t *fullpath, wchar_t *basepath)
{
 wchar_t fullpath2[MAX_SIZE];
 wchar_t basepath2[MAX_SIZE];

 if (dst == ((void*)0) || fullpath == ((void*)0) || basepath == ((void*)0))
 {
  return 0;
 }
 ClearUniStr(dst, size);

 NormalizePathW(fullpath2, sizeof(fullpath2), fullpath);
 NormalizePathW(basepath2, sizeof(basepath2), basepath);




 UniStrCat(basepath2, sizeof(basepath2), L"/");


 if (UniStrLen(fullpath2) <= UniStrLen(basepath2))
 {
  return 0;
 }

 if (UniStartWith(fullpath2, basepath2) == 0)
 {
  return 0;
 }

 UniStrCpy(dst, size, fullpath2 + UniStrLen(basepath2));

 return 1;
}
