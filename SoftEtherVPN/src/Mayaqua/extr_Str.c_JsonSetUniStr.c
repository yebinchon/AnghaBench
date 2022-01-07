
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int JSON_OBJECT ;


 char* CopyUniToUtf (int *) ;
 int Free (char*) ;
 int JsonSetStr (int *,char*,char*) ;

UINT JsonSetUniStr(JSON_OBJECT *object, char *name, wchar_t *string)
{
 UINT ret;
 char *utf8 = CopyUniToUtf(string);

 ret = JsonSetStr(object, name, utf8);

 Free(utf8);
 return ret;
}
