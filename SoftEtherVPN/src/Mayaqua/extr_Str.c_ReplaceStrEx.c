
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int CalcReplaceStrEx (char*,char*,char*,int) ;
 int Copy (char*,char*,int) ;
 int Free (char*) ;
 int INFINITE ;
 char* Malloc (int) ;
 int SearchStrEx (char*,char*,int,int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;

UINT ReplaceStrEx(char *dst, UINT size, char *string, char *old_keyword, char *new_keyword, bool case_sensitive)
{
 UINT i, j, num;
 UINT len_string, len_old, len_new;
 UINT len_ret;
 UINT wp;
 char *ret;

 if (string == ((void*)0) || old_keyword == ((void*)0) || new_keyword == ((void*)0))
 {
  return 0;
 }


 len_string = StrLen(string);
 len_old = StrLen(old_keyword);
 len_new = StrLen(new_keyword);


 len_ret = CalcReplaceStrEx(string, old_keyword, new_keyword, case_sensitive);

 ret = Malloc(len_ret + 1);
 ret[len_ret] = '\0';


 i = 0;
 j = 0;
 num = 0;
 wp = 0;
 while (1)
 {
  i = SearchStrEx(string, old_keyword, i, case_sensitive);
  if (i == INFINITE)
  {
   Copy(ret + wp, string + j, len_string - j);
   wp += len_string - j;
   break;
  }
  num++;
  Copy(ret + wp, string + j, i - j);
  wp += i - j;
  Copy(ret + wp, new_keyword, len_new);
  wp += len_new;
  i += len_old;
  j = i;
 }


 StrCpy(dst, size, ret);


 Free(ret);

 return num;
}
