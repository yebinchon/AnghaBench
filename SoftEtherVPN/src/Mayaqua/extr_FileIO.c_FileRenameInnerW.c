
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int OSFileRenameW (int *,int *) ;

bool FileRenameInnerW(wchar_t *old_name, wchar_t *new_name)
{

 if (old_name == ((void*)0) || new_name == ((void*)0))
 {
  return 0;
 }

 return OSFileRenameW(old_name, new_name);
}
