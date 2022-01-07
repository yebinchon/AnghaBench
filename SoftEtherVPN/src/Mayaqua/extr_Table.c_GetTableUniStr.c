
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_3__ {char* unistr; } ;
typedef TYPE_1__ TABLE ;


 TYPE_1__* FindTable (char*) ;

wchar_t *GetTableUniStr(char *name)
{
 TABLE *t;

 if (name == ((void*)0))
 {

  return L"";
 }


 t = FindTable(name);
 if (t == ((void*)0))
 {

  return L"";
 }

 return t->unistr;
}
