
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp1 ;


 int FileRenameInnerW (int *,int *) ;
 int InnerFilePathW (int *,int,int *) ;
 int MAX_SIZE ;

bool FileRenameW(wchar_t *old_name, wchar_t *new_name)
{
 wchar_t tmp1[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];

 if (old_name == ((void*)0) || new_name == ((void*)0))
 {
  return 0;
 }

 InnerFilePathW(tmp1, sizeof(tmp1), old_name);
 InnerFilePathW(tmp2, sizeof(tmp2), new_name);

 return FileRenameInnerW(tmp1, tmp2);
}
