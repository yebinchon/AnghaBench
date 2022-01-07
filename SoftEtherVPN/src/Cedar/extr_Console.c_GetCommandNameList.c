
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int TOKEN_LIST ;


 int Free (int ) ;
 int * NullToken () ;
 int ParseCommandEx (int *,char*,int **) ;

TOKEN_LIST *GetCommandNameList(wchar_t *str)
{
 TOKEN_LIST *t;

 if (str == ((void*)0))
 {
  return NullToken();
 }

 Free(ParseCommandEx(str, L"dummy_str", &t));

 return t;
}
