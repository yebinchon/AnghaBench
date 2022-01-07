
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Value; } ;
typedef int LIST ;
typedef TYPE_1__ INI_ENTRY ;


 TYPE_1__* GetIniEntry (int *,char*) ;

char *IniStrValue(LIST *o, char *key)
{
 INI_ENTRY *e;

 if (o == ((void*)0) || key == ((void*)0))
 {
  return 0;
 }

 e = GetIniEntry(o, key);
 if (e == ((void*)0))
 {
  return "";
 }

 return e->Value;
}
