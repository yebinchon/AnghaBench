
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int String; } ;
typedef TYPE_1__ UNICODE ;


 int NdisFreeString (int ) ;
 int NeoFree (TYPE_1__*) ;

void FreeUnicode(UNICODE *u)
{

 if (u == ((void*)0))
 {
  return;
 }


 NdisFreeString(u->String);


 NeoFree(u);
}
