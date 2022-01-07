
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int Free (char*) ;
 scalar_t__ INFINITE ;
 char* Malloc (scalar_t__) ;
 int StrCpy (char*,scalar_t__,char*) ;
 scalar_t__ StrLen (char*) ;
 int StrUpper (char*) ;
 int strncmp (char*,char*,scalar_t__) ;

UINT SearchStrEx(char *string, char *keyword, UINT start, bool case_sensitive)
{
 UINT len_string, len_keyword;
 UINT i;
 char *cmp_string, *cmp_keyword;
 bool found;

 if (string == ((void*)0) || keyword == ((void*)0))
 {
  return INFINITE;
 }


 len_string = StrLen(string);
 if (len_string <= start)
 {

  return INFINITE;
 }


 len_keyword = StrLen(keyword);
 if (len_keyword == 0)
 {

  return INFINITE;
 }

 if ((len_string - start) < len_keyword)
 {

  return INFINITE;
 }

 if (case_sensitive)
 {
  cmp_string = string;
  cmp_keyword = keyword;
 }
 else
 {
  cmp_string = Malloc(len_string + 1);
  StrCpy(cmp_string, len_string + 1, string);
  cmp_keyword = Malloc(len_keyword + 1);
  StrCpy(cmp_keyword, len_keyword + 1, keyword);
  StrUpper(cmp_string);
  StrUpper(cmp_keyword);
 }


 found = 0;
 for (i = start;i < (len_string - len_keyword + 1);i++)
 {

  if (!strncmp(&cmp_string[i], cmp_keyword, len_keyword))
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
