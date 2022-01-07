
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * EnumCache; } ;
typedef TYPE_1__ SECURE ;


 int FreeEnumSecObject (int *) ;

void EraseEnumSecObjectCache(SECURE *sec)
{

 if (sec == ((void*)0) || sec->EnumCache == ((void*)0))
 {
  return;
 }

 FreeEnumSecObject(sec->EnumCache);
 sec->EnumCache = ((void*)0);
}
