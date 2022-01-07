
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (int*) ;

void ConvertPathW(wchar_t *path)
{
 UINT i, len;



 wchar_t new_char = L'/';


 len = UniStrLen(path);
 for (i = 0;i < len;i++)
 {
  if (path[i] == L'\\' || path[i] == L'/')
  {
   path[i] = new_char;
  }
 }
}
