
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int String; } ;
typedef TYPE_1__ SL_UNICODE ;


 int NdisInitializeString (int *,char*) ;
 TYPE_1__* SlZeroMalloc (int) ;

SL_UNICODE *SlNewUnicode(char *str)
{
 SL_UNICODE *u;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }


 u = SlZeroMalloc(sizeof(SL_UNICODE));
 if (u == ((void*)0))
 {
  return ((void*)0);
 }


 NdisInitializeString(&u->String, str);

 return u;
}
