
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {char* str; } ;
typedef TYPE_1__ TABLE ;


 TYPE_1__* FindTable (char*) ;
 int GET_KETA (int ,int) ;
 int GetOsType () ;
 scalar_t__ OS_IS_WINDOWS_9X (int ) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int _II (char*) ;

char *GetTableStr(char *name)
{
 TABLE *t;

 if (name == ((void*)0))
 {
  return "";
 }
 t = FindTable(name);
 if (t == ((void*)0))
 {

  return "";
 }

 return t->str;
}
