
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (char*) ;

void UniSafeFileName(wchar_t *name)
{
 UINT i, len, dlen;
 static wchar_t *danger_str = L"\\/:*?\"<>|";

 if (name == ((void*)0))
 {
  return;
 }

 dlen = UniStrLen(danger_str);
 len = UniStrLen(name);

 for (i = 0;i < len;i++)
 {
  wchar_t c = name[i];
  UINT j;
  for (j = 0;j < dlen;j++)
  {
   if (c == danger_str[j])
   {
    c = L'_';
   }
  }
  name[i] = c;
 }
}
