
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HTTP_VALUE ;
typedef int HTTP_HEADER ;


 int AddHttpValue (int *,int *) ;
 int Copy (char*,char*,int) ;
 int EnSafeHttpHeaderValueStr (char*,char) ;
 int Free (char*) ;
 int INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 char* Malloc (int) ;
 int * NewHttpValue (char*,char*) ;
 int SearchStr (char*,char*,int ) ;
 int StrLen (char*) ;

bool AddHttpValueStr(HTTP_HEADER* header, char *string)
{
 HTTP_VALUE *value = ((void*)0);
 UINT pos = 0;
 char *value_name = ((void*)0);
 char *value_data = ((void*)0);


 if (header == ((void*)0) || IsEmptyStr(string))
 {
  return 0;
 }


 EnSafeHttpHeaderValueStr(string, ' ');


 pos = SearchStr(string, ":", 0);
 if (pos == INFINITE)
 {

  return 0;
 }

 if ((pos + 1) >= StrLen(string))
 {

  return 0;
 }


 value_name = Malloc(pos + 1);
 Copy(value_name, string, pos);
 value_name[pos] = 0;
 value_data = &string[pos + 1];

 value = NewHttpValue(value_name, value_data);
 if (value == ((void*)0))
 {
  Free(value_name);
  return 0;
 }

 Free(value_name);

 AddHttpValue(header, value);

 return 1;
}
