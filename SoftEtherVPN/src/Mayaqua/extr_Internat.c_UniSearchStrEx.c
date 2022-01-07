
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Free (int *) ;
 int INFINITE ;
 int * Malloc (int) ;
 scalar_t__ UniStrCmp (int *,int *) ;
 scalar_t__ UniStrCmpi (int *,int *) ;
 int UniStrCpy (int *,int,int *) ;
 int UniStrLen (int *) ;
 int UniStrUpper (int *) ;
 int wcsncmp (int *,int *,int) ;

UINT UniSearchStrEx(wchar_t *string, wchar_t *keyword, UINT start, bool case_sensitive)
{
 UINT len_string, len_keyword;
 UINT i;
 wchar_t *cmp_string, *cmp_keyword;
 bool found;

 if (string == ((void*)0) || keyword == ((void*)0))
 {
  return INFINITE;
 }


 len_string = UniStrLen(string);
 if (len_string <= start)
 {

  return INFINITE;
 }


 len_keyword = UniStrLen(keyword);
 if (len_keyword == 0)
 {

  return INFINITE;
 }

 if (len_string < len_keyword)
 {
  return INFINITE;
 }

 if (len_string == len_keyword)
 {
  if (case_sensitive)
  {
   if (UniStrCmp(string, keyword) == 0)
   {
    return 0;
   }
   else
   {
    return INFINITE;
   }
  }
  else
  {
   if (UniStrCmpi(string, keyword) == 0)
   {
    return 0;
   }
   else
   {
    return INFINITE;
   }
  }
 }

 if (case_sensitive)
 {
  cmp_string = string;
  cmp_keyword = keyword;
 }
 else
 {
  cmp_string = Malloc((len_string + 1) * sizeof(wchar_t));
  UniStrCpy(cmp_string, (len_string + 1) * sizeof(wchar_t), string);
  cmp_keyword = Malloc((len_keyword + 1) * sizeof(wchar_t));
  UniStrCpy(cmp_keyword, (len_keyword + 1) * sizeof(wchar_t), keyword);
  UniStrUpper(cmp_string);
  UniStrUpper(cmp_keyword);
 }


 found = 0;
 for (i = start;i < (len_string - len_keyword + 1);i++)
 {

  if (!wcsncmp(&cmp_string[i], cmp_keyword, len_keyword))
  {

   found = 1;
   break;
  }
 }

 if (case_sensitive == 0)
 {

  Free(cmp_keyword);
  Free(cmp_string);
 }

 if (found == 0)
 {
  return INFINITE;
 }
 return i;
}
