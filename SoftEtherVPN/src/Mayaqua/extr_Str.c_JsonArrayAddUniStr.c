
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int JSON_ARRAY ;


 char* CopyUniToUtf (int *) ;
 int Free (char*) ;
 int JsonArrayAddStr (int *,char*) ;

UINT JsonArrayAddUniStr(JSON_ARRAY *array, wchar_t *string)
{
 UINT ret;
 char *utf8 = CopyUniToUtf(string);

 ret = JsonArrayAddStr(array, utf8);

 Free(utf8);
 return ret;
}
