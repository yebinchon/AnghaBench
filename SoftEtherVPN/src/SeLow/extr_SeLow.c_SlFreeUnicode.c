
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int String; } ;
typedef TYPE_1__ SL_UNICODE ;


 int NdisFreeString (int ) ;
 int SlFree (TYPE_1__*) ;

void SlFreeUnicode(SL_UNICODE *u)
{

 if (u == ((void*)0))
 {
  return;
 }


 NdisFreeString(u->String);


 SlFree(u);
}
