
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int AdapterName; } ;
typedef TYPE_1__ SL_ADAPTER ;


 int SlFree (TYPE_1__*) ;
 int SlFreeLock (int ) ;
 int SlFreeUnicode (int ) ;

void SlFreeAdapter(SL_ADAPTER *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 SlFreeUnicode(a->AdapterName);

 SlFreeLock(a->Lock);

 SlFree(a);
}
