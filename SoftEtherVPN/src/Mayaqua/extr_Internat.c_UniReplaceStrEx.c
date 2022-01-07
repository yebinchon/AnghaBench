
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int UINT ;


 int Copy (scalar_t__*,scalar_t__*,int) ;
 int Free (scalar_t__*) ;
 int INFINITE ;
 scalar_t__* Malloc (int) ;
 int UniCalcReplaceStrEx (scalar_t__*,scalar_t__*,scalar_t__*,int) ;
 int UniSearchStrEx (scalar_t__*,scalar_t__*,int,int) ;
 int UniStrCpy (scalar_t__*,int,scalar_t__*) ;
 int UniStrLen (scalar_t__*) ;

UINT UniReplaceStrEx(wchar_t *dst, UINT size, wchar_t *string, wchar_t *old_keyword, wchar_t *new_keyword, bool case_sensitive)
{
 UINT i, j, num, len_string, len_old, len_new, len_ret, wp;
 wchar_t *ret;

 if (string == ((void*)0) || old_keyword == ((void*)0) || new_keyword == ((void*)0))
 {
  return 0;
 }


 len_string = UniStrLen(string);
 len_old = UniStrLen(old_keyword);
 len_new = UniStrLen(new_keyword);


 len_ret = UniCalcReplaceStrEx(string, old_keyword, new_keyword, case_sensitive);

 ret = Malloc((len_ret + 1) * sizeof(wchar_t));
 ret[len_ret] = 0;


 i = j = num = wp = 0;
 while (1)
 {
  i = UniSearchStrEx(string, old_keyword, i, case_sensitive);
  if (i == INFINITE)
  {
   Copy(&ret[wp], &string[j], (len_string - j) * sizeof(wchar_t));
   wp += len_string - j;
   break;
  }
  num++;
  Copy(&ret[wp], &string[j], (i - j) * sizeof(wchar_t));
  wp += i - j;
  Copy(&ret[wp], new_keyword, len_new * sizeof(wchar_t));
  wp += len_new;
  i += len_old;
  j = i;
 }


 UniStrCpy(dst, size, ret);


 Free(ret);

 return num;
}
