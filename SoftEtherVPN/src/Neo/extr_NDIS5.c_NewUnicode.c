
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int String; } ;
typedef TYPE_1__ UNICODE ;


 TYPE_1__* NeoZeroMalloc (int) ;
 int _NdisInitializeString (int *,char*) ;

UNICODE *NewUnicode(char *str)
{
 UNICODE *u;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }


 u = NeoZeroMalloc(sizeof(UNICODE));
 if (u == ((void*)0))
 {
  return ((void*)0);
 }


 _NdisInitializeString(&u->String, str);

 return u;
}
