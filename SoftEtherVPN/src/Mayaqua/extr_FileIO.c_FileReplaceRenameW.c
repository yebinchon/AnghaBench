
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int FileCopyW (int *,int *) ;
 int FileDeleteW (int *) ;

bool FileReplaceRenameW(wchar_t *old_name, wchar_t *new_name)
{

 if (old_name == ((void*)0) || new_name == ((void*)0))
 {
  return 0;
 }

 if (FileCopyW(old_name, new_name) == 0)
 {
  return 0;
 }

 FileDeleteW(old_name);

 return 1;
}
