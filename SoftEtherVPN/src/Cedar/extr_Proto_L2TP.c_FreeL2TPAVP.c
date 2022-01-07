
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; } ;
typedef TYPE_1__ L2TP_AVP ;


 int Free (TYPE_1__*) ;

void FreeL2TPAVP(L2TP_AVP *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 if (a->Data != ((void*)0))
 {
  Free(a->Data);
 }

 Free(a);
}
