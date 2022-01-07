
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int OSMakeDirW (int *) ;

bool MakeDirInnerW(wchar_t *name)
{

 if (name == ((void*)0))
 {
  return 0;
 }

 return OSMakeDirW(name);
}
