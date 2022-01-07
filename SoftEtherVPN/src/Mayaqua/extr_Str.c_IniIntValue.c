
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Value; } ;
typedef int LIST ;
typedef TYPE_1__ INI_ENTRY ;


 TYPE_1__* GetIniEntry (int *,char*) ;
 int ToInt (int ) ;

UINT IniIntValue(LIST *o, char *key)
{
 INI_ENTRY *e;

 if (o == ((void*)0) || key == ((void*)0))
 {
  return 0;
 }

 e = GetIniEntry(o, key);
 if (e == ((void*)0))
 {
  return 0;
 }

 return ToInt(e->Value);
}
