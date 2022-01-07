
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {struct TYPE_7__* Next; TYPE_1__* Object; } ;
struct TYPE_6__ {int Address; } ;
typedef TYPE_1__ TRACKING_OBJECT ;
typedef TYPE_2__ TRACKING_LIST ;


 TYPE_2__* OSMemoryAlloc (int) ;
 size_t TRACKING_HASH (int ) ;
 TYPE_2__** hashlist ;

void InsertTrackingList(TRACKING_OBJECT *o)
{
 UINT i;
 TRACKING_LIST *t;

 if (o == ((void*)0))
 {
  return;
 }

 t = OSMemoryAlloc(sizeof(TRACKING_LIST));
 t->Object = o;
 t->Next = ((void*)0);

 i = TRACKING_HASH(o->Address);

 if (hashlist[i] == ((void*)0))
 {
  hashlist[i] = t;
 }
 else
 {
  TRACKING_LIST *tt = hashlist[i];
  while (1)
  {
   if (tt->Next == ((void*)0))
   {
    tt->Next = t;
    break;
   }

   tt = tt->Next;
  }
 }
}
