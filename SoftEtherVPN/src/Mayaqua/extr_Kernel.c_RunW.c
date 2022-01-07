
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int OSRunW (int *,int *,int,int) ;

bool RunW(wchar_t *filename, wchar_t *arg, bool hide, bool wait)
{

 if (filename == ((void*)0))
 {
  return 0;
 }

 return OSRunW(filename, arg, hide, wait);
}
