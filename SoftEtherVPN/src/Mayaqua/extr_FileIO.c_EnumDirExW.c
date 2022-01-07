
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int DIRLIST ;
typedef int COMPARE ;


 int * CompareDirListByName ;
 int * UnixEnumDirExW (char*,int *) ;
 int * Win32EnumDirExW (char*,int *) ;

DIRLIST *EnumDirExW(wchar_t *dirname, COMPARE *compare)
{
 DIRLIST *d = ((void*)0);

 if (dirname == ((void*)0))
 {
  dirname = L"./";
 }

 if (compare == ((void*)0))
 {
  compare = CompareDirListByName;
 }




 d = UnixEnumDirExW(dirname, compare);


 return d;
}
