
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int OSDeleteDirW (int *) ;

bool DeleteDirInnerW(wchar_t *name)
{

 if (name == ((void*)0))
 {
  return 0;
 }

 return OSDeleteDirW(name);
}
